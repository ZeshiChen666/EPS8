// Auto-generated. Do not edit!

// (in-package niryo_robot_user_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConnectionState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uuid = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectionState
    // Serialize message field [uuid]
    bufferOffset = _serializer.string(obj.uuid, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectionState
    let len;
    let data = new ConnectionState(null);
    // Deserialize message field [uuid]
    data.uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uuid);
    length += _getByteLength(object.state);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_user_interface/ConnectionState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07c91713c4d83e797d2b1ee36fd8e8ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string connection = CONNECTION
    string ok = OK
    string close = CLOSE
    
    string uuid
    string state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectionState(null);
    if (msg.uuid !== undefined) {
      resolved.uuid = msg.uuid;
    }
    else {
      resolved.uuid = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    return resolved;
    }
};

// Constants for message
ConnectionState.Constants = {
  CONNECTION: 'CONNECTION',
  OK: 'OK',
  CLOSE: 'CLOSE',
}

module.exports = ConnectionState;
