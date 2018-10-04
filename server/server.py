import json
import re
from flask import Flask, request
# from csv111 import findinfo
from utils import save_obj, load_obj, search_zid
from preprocess import preprocess, getcourse
from flask_cors import CORS
# from language import process_words
# from cb import chatterbot

import sqlite3
import nltk
from nltk.corpus import state_union
from nltk.tokenize import PunktSentenceTokenizer, sent_tokenize, word_tokenize
from nltk.corpus import stopwords
app = Flask(__name__)
CORS(app)

stop_words = set(stopwords.words('english'))

def filter_words(words):
  result = []
  for word in words:
    print(word)
    result.append(word[0])
    # if word[1] == 'NN' or word[1] == 'NNP' or word[1] == 'NNS' or word[1] == 'NNPS':

  return result

def process_words(document):
  conn = sqlite3.connect('test.db')
  curs = conn.cursor()

  sentences = nltk.sent_tokenize(document)
  results = []
  data = []
  for sent in sentences:
    data = data + nltk.pos_tag(nltk.word_tokenize(sent))

  query = filter_words(data)
  if query == []:
    return []
  result = curs.execute('select * from course_info WHERE course_title COLLATE UTF8_GENERAL_CI LIKE "%{}%"'.format('%'.join(query)))
  # results += map(lambda r: r[0].strip(), result)
  results += map(lambda r: list(r), set(result))
  # results += result

  # search course code
  for word in query:
    result = curs.execute('select * from course_info WHERE course_code = "{}"'.format(word.upper()))
    # results += map(lambda r: r[0].strip(), result)
    results += map(lambda r: list(r), set(result))
    # results += result

  # return list(set(results))[:10]
  return results[:10]


@app.route('/', methods = ['GET', 'POST'])
def hello_world():
  if request.method == 'POST':
    message = request.get_json()['message']

    # data = preprocess(message)
    data = process_words(message)
    # print(data)
    # print(','.join(data))
    retval = []
    for course in data:
      # print(course)
      # print(','.join(course))
      retval.append(','.join(course))
    print(retval)
    return '|'.join(retval)

    print(data)

    for word in data:
      match = re.match(r'[a-z]{4}[0-9]{4}', word)
      if match:
        print(match.group(0).upper())
        try:
          return findinfo(match.group(0).upper())
        except KeyError:
          return 'Sorry, I couldn\'t find that course'

    # if current_user == None:
    #   match = search_zid(message)
    #   if match:
    #     print(match.group(0))
    #     response = 'Welcome {}!|Please enter your courses'.format(match.group(0))
    #       # + '|Please enter your courses (comma separated)'
    #     return response
    #   else:
    #     response = 'I\'m sorry, I couldn\'t recognise a zid in that'
    #     return response
    # elif current_user_courses == []:
    #   pass
    # else:
    response = chatterbot.get_response(message)
    print('Sending: {}'.format(response))
    # response = 'I received ' + message
    return str(response)

if __name__ == '__main__':
  app.run(debug=True)
