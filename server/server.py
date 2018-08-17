import json
from flask import Flask, request
from flask_cors import CORS
from cb import chatterbot
app = Flask(__name__)
CORS(app)

@app.route('/', methods = ['GET', 'POST'])
def hello_world():
  if request.method == 'POST':
    message = request.get_json()['message']
    print(message)
    print(chatterbot)
    response = chatterbot.get_response(message)
    # response = 'I received ' + message
    return str(response)
  return 'Test'

if __name__ == '__main__':
  app.run(debug=True)
