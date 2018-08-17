import React, { Component } from 'react';
import logo from './logo.svg';
import { map } from 'lodash';
import './App.css';

class App extends Component {
  constructor() {
    super();

    this.state = {
      input: '',
      messages: ['Centerbot: Hello! How can I assist you?'],
    }
  }

  updateScroll() {
    const element = document.getElementById("messages");
        element.scrollTop = element.scrollHeight;
  }

  onChange(e) {
    this.setState({ input: e.target.value });
  }

  submit() {
    const { messages } = this.state;
    messages.push(`You: ${this.state.input}`);
    this.setState({
      input: '',
      messages,
    }, this.updateScroll);
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
            map(this.state.messages, (message) => {
              return <p>{message}</p>;
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
