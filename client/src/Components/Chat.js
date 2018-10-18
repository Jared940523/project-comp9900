import React, { Component } from 'react';
import { map, forEach } from 'lodash';
import axios from 'axios';
import { Grid, Row, Col, FormControl } from 'react-bootstrap';
import '../App.css';

class Chat extends Component {
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

    axios.post('http://localhost:5000', {
      message: this.state.input
      // message: 'information',
    // }).then((response) => this.addMessage(false, response.data));
    }).then((response) => this.updateData(response.data));

    this.setState({ input: '' });
  }

  updateData(data) {
    const test = data.strip().split('\n');
    forEach(test, (a) => {
      console.log(a.split("\t"));
    })
    if (data === '') {
      return this.addMessage(false, 'Sorry, I couldn\'t find anything');
    }
    const courses = map(data.split('|'), (course) => {
      return course.split(',');
    });

    forEach(courses, (course) => {
      this.addMessage(false, <a href={course[2]} target="_blank">{course[0]}: {course[1]}</a>);
    });
  }

  onKeyPress(e) {
    if (e.key === 'Enter' && this.state.input !== '') {
      this.submit();
    }
  }

  render() {
    return (
      <div>
        <Grid>
          <Row className="message-container" id="messages">
            {
              map(this.state.messages, (message, key) => {
                return <p key={key}><strong>{message[0]}</strong>: {message[1]}</p>;
              })
            }
          </Row>
        </Grid>
        <div className="message-input">
          <FormControl
            type="text"
            value={this.state.input}
            placeholder="Enter text"
            onChange={(e) => this.onChange(e)}
            onKeyPress={(e) => this.onKeyPress(e)}
          />
          <span className="send-icon">
            <i className="fas fa-arrow-alt-circle-right"></i>
          </span>
        </div>
      </div>
    );
  }
}

export default Chat;
