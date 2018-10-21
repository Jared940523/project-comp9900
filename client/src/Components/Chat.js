import React, { Component } from 'react';
import { map, forEach } from 'lodash';
import axios from 'axios';
import { FormControl } from 'react-bootstrap';
import Select from 'react-select';
import Message from './Message';
import Languages from './Languages'
import annyang from 'annyang';
import '../App.css';

const defaultLang = {
  value: Languages[0].code,
  label: Languages[0].value,
}

let init = false;

class Chat extends Component {
  constructor() {
    super();

    this.state = {
      input: '',
      messages: [['bot', 'Hello! How can I assist you?']],
      loading: false,
      micActive: false,
      language: defaultLang,
    }
  }

  startListening() {
    console.log('startListening()');
    this.setState({ micActive: true });
    if (annyang) {
      annyang.addCallback('result', (userSaid, commandText, phrases) => {
        this.stopListening();
        this.setState({ input: userSaid[0] }, () => this.submit(true));
      });
      annyang.setLanguage(this.state.language.value);
      annyang.start();
    }
  }

  stopListening() {
    console.log('stopListening()');
    this.setState({ micActive: false });
    if (annyang) {
      annyang.abort();
    }
  }

  addMessage(fromUser, message) {
    const { messages } = this.state;
    const source = fromUser ? 'you' : 'bot';
    messages.push([source, message]);
    this.setState({
      messages,
    }, this.updateScroll);
  }

  updateScroll() {
    const element = document.getElementById("messages");
        element.scrollTop = element.scrollHeight;
  }

  onChange(e) {
    this.setState({ input: e.target.value });
  }

  submit() {
    if (this.state.input === '') return;
    this.addMessage(true, this.state.input);

    axios.post('http://localhost:5000', {
      message: this.state.input,
      language: this.state.language.value,
    }).then((response) => {
      console.log(response.data);
      this.updateData(response.data)
    }).catch((err) => {
      console.error(err);
      this.addMessage(false, 'Sorry, something went wrong. Please try asking something else.');
    })

    this.setState({ input: '' });
  }

  updateData(data) {
    if (data === '') {
      return this.addMessage(false, 'Sorry, I couldn\'t find anything');
    }

    this.addMessage(false, data);
  }

  onKeyPress(e) {
    if (e.key === 'Enter' && this.state.input !== '') {
      this.submit();
    }
  }

  render() {
    return (
      <div>
        <div id="messages">
          {
            map(this.state.messages, (message, key) => {
              return (
                <Message
                  key={key}
                  data={message}
                />
              )
              return (
                <div key={key}>
                  <p><strong>{message[0]}</strong></p>
                  {message[1]}
                </div>
              );
            })
          }
        </div>
        <div className="message-input-container">
          <div className="message-input lang">
            <Select
              className="lang-select"
              classNamePrefix="lang-select"
              options={Languages.map((lang) => {
                return {
                  label: lang.value,
                  value: lang.code,
                }
              })}
              value={this.state.language}
              onChange={(e) => this.setState({ language: e })}
            />
            {
              this.state.micActive
                ? <i className="fas fa-microphone red" onClick={this.stopListening.bind(this)}></i>
                : <i className="fas fa-microphone" onClick={this.startListening.bind(this)}></i>
            }
          </div>
          <div className="message-input">
            <FormControl
              type="text"
              value={this.state.input}
              placeholder="Enter your question..."
              onChange={(e) => this.onChange(e)}
              onKeyPress={(e) => this.onKeyPress(e)}
            />
            <span className="send-icon">
              <i
                className="fas fa-arrow-alt-circle-right"
                onClick={this.submit.bind(this)}
              />
            </span>
          </div>
        </div>
      </div>
    );
  }
}

export default Chat;
