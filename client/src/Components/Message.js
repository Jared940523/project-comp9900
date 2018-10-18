import React, { Component } from 'react';
import { map } from 'lodash';
import * as linkify from 'linkifyjs';
import linkifyHtml from 'linkifyjs/html';
import '../css/message.css';

// const speech = require('@google-cloud/speech');
// const fs = require('fs');

// const client = new speech.SpeechClient();

// const fileName = './audio.raw';

const MESSAGE_TYPES = {
  building: 'building_info',
  service: 'service_info',
  program: 'program_info',
  course: 'course_info',
}

function urlify(text) {
  const urlRegex = /(https?:\/\/[^\s]+)/g;
  const match = text.match(urlRegex);
  if (match) {
    return <a href={match[0]} target="_blank">{match[0]}</a>;
  }

  return text;
}

function processContent(content) {
  const meta = content.split('\n')[0];

  if (meta === MESSAGE_TYPES.course) {
    let [ _, headers, info ] = content.split('\n');
    headers = headers.split('\t');
    info = info.split('\t');
    return map(headers, (_, index) => {
      return (
        <div key={index}>
          <p className="no-margin"><strong>{headers[index]}</strong></p>
          <p>{urlify(info[index])}</p>
        </div>
      );
    });
  } else if (meta === MESSAGE_TYPES.building) {
    let [ _, location ] = content.split('\n');
    return (
      <div>
        <p className="no-margin"><strong>Location:</strong></p>
        <p>{location}</p>
        <p>
          The information for all campus buildings can be
          found <a href="http://fmtoolbox.unsw.edu.au/comms/KensingtonCampus.pdf">here</a>
        </p>
      </div>
    );

  } else if (meta === MESSAGE_TYPES.service) {
    let [ _, info ] = content.split('\n');
    return <p>{info}</p>;
  } else if (meta === MESSAGE_TYPES.program) {
    let [ _, info ] = content.split('\n');
    const fields = info.split('\t');

    return map(fields, (field, index) => <p key={index}>{urlify(field)}</p>);
  }

  return content;
}

export default class Message extends Component {
  constructor(props) {
    super(props);

    const content = processContent(props.data[1]);

    this.state = {
      user: props.data[0],
      content: content,
    };
  }

  render() {
    return (
      <div className={`message-container`}>
        <span className={`message ${this.state.user}`}>{this.state.content}</span>
      </div>
    );
  }
}
