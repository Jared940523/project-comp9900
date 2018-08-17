import json
from flask import Flask, request
from flask_cors import CORS
app = Flask(__name__)
CORS(app)

@app.route('/', methods = ['GET', 'POST'])
def hello_world():
  if request.method == 'POST':
    message = request.get_json()['message']
    # response = chatterbot.get_response(request.form['message'])
    response = 'I received ' + message
    return response
  return 'Test'

if __name__ == '__main__':
  app.run()
