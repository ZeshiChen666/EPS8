// Auto-generated. Do not edit!

// (in-package niryo_robot_vision.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ActiveDebugTopics = require('../msg/ActiveDebugTopics.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ActivateDebugTopicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topics = null;
    }
    else {
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = new ActiveDebugTopics();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActivateDebugTopicsRequest
    // Serialize message field [topics]
    bufferOffset = ActiveDebugTopics.serialize(obj.topics, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActivateDebugTopicsRequest
    let len;
    let data = new ActivateDebugTopicsRequest(null);
    // Deserialize message field [topics]
    data.topics = ActiveDebugTopics.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_vision/ActivateDebugTopicsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a180b8b00d4a3a59b916fbf2afaefa98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    niryo_robot_vision/ActiveDebugTopics topics
    
    ================================================================================
    MSG: niryo_robot_vision/ActiveDebugTopics
    bool red_channel
    bool green_channel
    bool blue_channel
    bool any_channel
    bool markers
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActivateDebugTopicsRequest(null);
    if (msg.topics !== undefined) {
      resolved.topics = ActiveDebugTopics.Resolve(msg.topics)
    }
    else {
      resolved.topics = new ActiveDebugTopics()
    }

    return resolved;
    }
};

class ActivateDebugTopicsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActivateDebugTopicsResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActivateDebugTopicsResponse
    let len;
    let data = new ActivateDebugTopicsResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_vision/ActivateDebugTopicsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c1d00fb8b4e78420f43d93d5292a429';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActivateDebugTopicsResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ActivateDebugTopicsRequest,
  Response: ActivateDebugTopicsResponse,
  md5sum() { return 'c0c5123a51741d038cae1b93404df52b'; },
  datatype() { return 'niryo_robot_vision/ActivateDebugTopics'; }
};
