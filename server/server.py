import json
import re
from flask import Flask, request
from csv111 import findinfo
from utils import save_obj, load_obj, search_zid
from preprocess import preprocess, getcourse
from flask_cors import CORS
from cb import chatterbot
app = Flask(__name__)
CORS(app)

# initial_connection = True
# current_user = None
# current_user_courses = []

# users = load_obj('users')

@app.route('/', methods = ['GET', 'POST'])
def hello_world():
  if request.method == 'POST':
    message = request.get_json()['message']
    print('Received: {}'.format(message))

    data = preprocess(message)

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
