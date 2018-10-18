import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import Chat from './Components/Chat';
import { map, forEach } from 'lodash';
import axios from 'axios';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1>Welcome to the online student center!</h1>
        </header>
        <Router>
          <div>
            <Route exact path="/" component={Chat} />
          </div>
        </Router>
      </div>
    );
  }
}

export default App;

// <div className="message-container" id="messages">
//   {
//     map(this.state.messages, (message, key) => {
//       return <p key={key}><strong>{message[0]}</strong>: {message[1]}</p>;
//     })
//   }
// </div>
// <input
//   type="text"
//   className="query-input"
//   placeholder="Enter your query..."
//   value={this.state.input}
//   onChange={(e) => this.onChange(e)}
//   onKeyPress={(e) => this.onKeyPress(e)}
// />
