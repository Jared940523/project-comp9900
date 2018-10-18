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
import re
import urllib.parse, urllib.request
import hashlib
import urllib
import random
import json
import time

from collections import defaultdict
app = Flask(__name__)
CORS(app)

url_google = 'http://translate.google.cn'
reg_text = re.compile(r'(?<=TRANSLATED_TEXT=).*?;')
user_agent = r'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) ' \
                  r'Chrome/44.0.2403.157 Safari/537.36'

def translateGoogle(text, f='zh-cn', t='en'):
    values = {'hl': 'en', 'ie': 'utf-8', 'text': text, 'langpair': '%s|%s' % (f, t)}
    value = urllib.parse.urlencode(values)
    req = urllib.request.Request(url_google + '?' + value)
    req.add_header('User-Agent', user_agent)
    response = urllib.request.urlopen(req)
    content = response.read().decode('utf-8')
    data = reg_text.search(content)
    if not data:
        return text
    result = data.group(0).strip(';').strip('\'')
    return result

def get_tuple_info_from_db():
    conn = pymysql.connect(host='localhost', port=3306, user='root', passwd='password', db='chatbot')
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
    conn = pymysql.connect(host='localhost', port=3306, user='root', passwd='password', db='chatbot')
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
def chatbot():
    serv_list = ["Moodle login","MS office","Room booking","Key dates","Academic calendar","Airport pickup","International Student Advisor",
                    "International Student Briefing Day","UNSW Essentials for International Students","UNSW Uni-Verse app","Support for families of students",
                    "Orientation week","Information about the UNSW3+ Calendar","Register for workshops","Careers and employment","English Language and Conversation Skills",
                    "Student visa conditions","Modes of study","Reducing your study load","Amendments and variations to your enrolment",
                    "Credit transfers and advance standing","Applying for a new Confirmation of Enrolment","Program transfer","Visa Information and Living in Australia"]

    ser_flag = 0
    b_flag = 0
    tables = get_tuple_info_from_db()
    results = response_from_db('select distinct * from building_info;')
    building_names = [' ' for _ in range(len(results))]
    building_ids = [' ' for _ in range(len(results))]
    for index, item in enumerate(results):
        building_ids[index], building_names[index] = item[0], item[1]
    if request.method == 'POST':
        message = request.get_json()['message']
        language = request.get_json()['language']

        if language != 'en-US':
            print(language)
            message = translateGoogle(message, f=language, t='en')

        print('Received: {}'.format(message))
        data = preprocess(message)
        course_code = []
        program_code = []
        building_name = []
        building_id = []
        service_name = []
        for word in data:
            course_code_p = re.compile(r'[a-zA-Z]{4}[0-9]{4}')
            program_code_p = re.compile(r'[0-9]{4}')
            course_code += course_code_p.findall(word)
            program_code += program_code_p.findall(word)
            for i in serv_list:
                if i.upper() in message.upper():
                    service_name.append(i)
                    ser_flag = 1
            for i in building_names:
                if i.upper() in message.upper():
                    building_name.append(i)
                    b_flag = 1
            for i in building_ids:
                if i.upper() in message.upper():
                    building_id.append(i)
                    if b_flag == 0:
                        ser_flag = 2
##            if word in building_names:
##               building_name.append(word)
##            elif word in building_ids:
##                building_id.append(word)
##            else:
##                building_name += [item for item in building_names if word in item]
##        if building_name:
##            building_name = [item for item in building_name if difflib.SequenceMatcher(a=item, b=' '.join(data)).quick_ratio() > 0.9]
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

        if table_name or tuple_name or program_code or service_name:
            querys = []
            for table in table_name:
                tuple_str = ', '.join(tuple_name)
                query = 'select distinct ' + tuple_str + ' from ' + table
                if len(course_code) == 1:
                    query += ' where course_code=\'' + course_code[0].upper() + '\''
                elif len(course_code) > 1:
                    courses = ['course_code=\'' + code.upper() + '\'' for code in course_code]
                    string = ' or '.join(courses)
                    query += ' where ' + string

                querys.append(query)
            query = ' union '.join(querys) + ';'

            if course_code:
                results = response_from_db(query)
                string = 'course_info;'
                string += '|'.join(tuple_name) + ';'
                for res in results:
                    string += '|'.join(res) + ';'
                response = string
            elif program_code:
                querys = []
                table_name = ["pc_degree_info","pr_degree_info","ud_degree_info"]
                for table in table_name:
                    query = 'select distinct *' + ' from ' + table
                    if len(program_code) == 1:
                        query += ' where Code=\'' + program_code[0] + '\''
                    elif len(program_code) > 1:
                        courses = ['Code=\'' + code + '\'' for code in course_code]
                        string = ' or '.join(courses)
                        query += ' where ' + string

                    querys.append(query)
                query = ' union '.join(querys) + ';'
                results = response_from_db(query)
                string = "program_info;"
                for res in results:
                    string += '|'.join(res) + ';'
                response = string
            elif ser_flag:
                query = """SELECT Description,URL FROM student_support WHERE service = \'"""+service_name[0]+"\'"+";"
                results = response_from_db(query)
                string = "service_info;"
                for res in results:
                    string += '|'.join(res) + ';'
                response = string
            elif 'building_info' in query:
                if building_name:
                    names = ['name=\'' + name + '\'' for name in building_name]
                    string = ' or '.join(names)
                    query = query[:-1] + ' where ' + string + ';'
                    results = response_from_db(query)
                    string = 'building_info;'
                    for res in results:
                        string += '|'.join(res) + ';'
                    response = string + "The information for all campus buildings can be found at http://fmtoolbox.unsw.edu.au/comms/KensingtonCampus.pdf"
                    print(response)

        if str(response) == 'I am sorry, this maybe beyond my perceiving.':
            response = str(response) + ' Maybe you could find something useful in here.'
            res_from_search(message)

        rows = []
        cols = []
        meta = True
        translated = []

        if language != 'en-US':
            for row in response.split(';'):
                # skip over the meta handler when translating
                if meta:
                    meta = False
                    translated.append(''.join(row))
                    continue

                cols = []
                for col in row.split('|'):
                    cols.append(translateGoogle(col, f='en', t=language))
                rows.append(cols)

            for row in rows:
                translated.append('|'.join(row))

            response = ';'.join(translated)
        # if language != 'EN':
        #     response = translateGoogle(response, f='en', t=language)
        print(response)
        return str(response)

if __name__ == '__main__':
    app.run(debug=True)
