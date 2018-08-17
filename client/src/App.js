import React, { Component } from 'react';
import logo from './logo.svg';
import { map } from 'lodash';
import axios from 'axios';
import './App.css';

class App extends Component {
  constructor() {
    super();

    this.state = {
      input: '',
      messages: [['Centerbot', 'Hello! How can I assist you?']],
    }
  }

  addMessage(fromUser, message) {
    const { messages } = this.state;
    const source = fromUser ? 'You' : 'Centerbot';
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
    this.addMessage(true, this.state.input);

    // axios.get('http://localhost:5000').then((response) => {
    //   console.log(response);
    // })

    axios.post('http://localhost:5000', {
      message: this.state.input
    }).then((response) => this.addMessage(false, response.data));

    this.setState({ input: '' });
  }

  onKeyPress(e) {
    if (e.key === 'Enter') {
      this.submit();
    }
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1>Welcome to the online student center!</h1>
        </header>
        <div className="message-container" id="messages">
          {
            map(this.state.messages, (message, key) => {
              return <p key={key}><strong>{message[0]}</strong>: {message[1]}</p>;
            })
          }
        </div>
        <input
          type="text"
          className="query-input"
          placeholder="Enter your query..."
          value={this.state.input}
          onChange={(e) => this.onChange(e)}
          onKeyPress={(e) => this.onKeyPress(e)}
        />
      </div>
    );
  }
}

export default App;
