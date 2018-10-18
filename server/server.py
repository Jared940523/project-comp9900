import json
import re
from flask import Flask, request
#from csv111 import findinfo
from utils import save_obj, load_obj, search_zid
from preprocess import preprocess, getcourse
from flask_cors import CORS
from cb import chatterbot
import requests
import webbrowser
import pymysql
import difflib
from collections import defaultdict
app = Flask(__name__)
CORS(app)

def get_tuple_info_from_db():
    conn = pymysql.connect(host='localhost', port=3306, user='root', passwd='351227', db='user')
    cur = conn.cursor()
    tables = defaultdict()
    sql = 'show tables;'
    cur.execute(sql)
    results = cur.fetchall()

    for table in results:
        tables[table[0]] = []
        sql = 'desc ' + table[0] + ';'
        cur.execute(sql)
        res = cur.fetchall()
        tables[table[0]] = [item[0].replace('_', ' ') for item in res]

    return tables


def response_from_db(query):
    conn = pymysql.connect(host='localhost', port=3306, user='root', passwd='351227', db='user')
    cur = conn.cursor()
    cur.execute(query)
    results = cur.fetchall()
    conn.commit()
    cur.close()
    return results


def res_from_search(keyword):
    url = 'https://www.unsw.edu.au/search/unsw?kw=' + keyword
    raw = requests.get(url)
    webbrowser.open(raw.url)


@app.route('/', methods = ['GET', 'POST'])
def hello_world():
    tables = get_tuple_info_from_db()
    results = response_from_db('select distinct * from building_info;')
    building_names = [' ' for _ in range(len(results))]
    building_ids = [' ' for _ in range(len(results))]
    for index, item in enumerate(results):
        building_ids[index], building_names[index] = item[0].lower(), item[1].lower()
#    print('names:', building_names, 'ids:', building_ids)
#    print(tables.values())
    if request.method == 'POST':
        message = request.get_json()['message']
        print('Received: {}'.format(message))
        data = preprocess(message)
#        print('data:', data)
        course_code = []
        building_name = []
        building_id = []
        for word in data:
            course_code_p = re.compile(r'[a-zA-Z]{4}[0-9]{4}')
            course_code += course_code_p.findall(word)
            if word in building_names:
                building_name.append(word)
            elif word in building_ids:
                building_id.append(word)
            else:
                building_name += [item for item in building_names if word in item]
        if building_name:
            building_name = [item for item in building_name if difflib.SequenceMatcher(a=item, b=' '.join(data)).quick_ratio() > 0.9]

        response = chatterbot.get_response(message)
        words = str(response).split(' ')
        table_name = []
        tuple_name = []
        words_cp = [i for i in words]

        for word in words:
            if word in tables.keys() and word not in table_name:
                table_name.append(word)
                words_cp.remove(word)
                for item in words_cp:
                    if item.replace('_', ' ') in tables[word] and item not in tuple_name:
                        tuple_name.append(item)

        if table_name and tuple_name:
            querys = []
            for table in table_name:
                tuple_str = ', '.join(tuple_name)
                query = 'select distinct ' + tuple_str + ' from ' + table
                if len(course_code) == 1:
                    query += ' where course_code=\'' + course_code[0] + '\''
                elif len(course_code) > 1:
                    courses = ['course_code=\'' + code + '\'' for code in course_code]
                    string = ' or '.join(courses)
                    query += ' where ' + string

                querys.append(query)
            query = ' union '.join(querys) + ';'

            if course_code:
                results = response_from_db(query)
                string = '\t'.join(tuple_name) + '\n'
                for res in results:
                    string += '\t'.join(res) + '\n'
                response = string
            elif 'building_info' in query:
                if building_name:
                    print('building_name:', building_name)
                    names = ['name=\'' + name + '\'' for name in building_name]
                    string = ' or '.join(names)
                    query = query[:-1] + ' where ' + string + ';'
                    results = response_from_db(query)
                    string = ''
                    for res in results:
                        string += '\t'.join(res) + '\n'
                    response = string + 'and the building information is in http://fmtoolbox.unsw.edu.au/comms/KensingtonCampus.pdf'

        if str(response) == 'I am sorry, this maybe beyond my perceiving.':
            response = str(response) + ' Maybe you could find something useful in here.'
            res_from_search(message)

        print('Sending: {}'.format(response))
        # response = 'I received ' + message
        return str(response)

if __name__ == '__main__':
    app.run(debug=True)
