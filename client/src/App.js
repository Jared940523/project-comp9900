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
          <h3 className="no-margin">Welcome to the online student center!</h3>
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
