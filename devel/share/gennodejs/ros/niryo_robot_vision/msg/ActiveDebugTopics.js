// Auto-generated. Do not edit!

// (in-package niryo_robot_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ActiveDebugTopics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.red_channel = null;
      this.green_channel = null;
      this.blue_channel = null;
      this.any_channel = null;
      this.markers = null;
    }
    else {
      if (initObj.hasOwnProperty('red_channel')) {
        this.red_channel = initObj.red_channel
      }
      else {
        this.red_channel = false;
      }
      if (initObj.hasOwnProperty('green_channel')) {
        this.green_channel = initObj.green_channel
      }
      else {
        this.green_channel = false;
      }
      if (initObj.hasOwnProperty('blue_channel')) {
        this.blue_channel = initObj.blue_channel
      }
      else {
        this.blue_channel = false;
      }
      if (initObj.hasOwnProperty('any_channel')) {
        this.any_channel = initObj.any_channel
      }
      else {
        this.any_channel = false;
      }
      if (initObj.hasOwnProperty('markers')) {
        this.markers = initObj.markers
      }
      else {
        this.markers = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActiveDebugTopics
    // Serialize message field [red_channel]
    bufferOffset = _serializer.bool(obj.red_channel, buffer, bufferOffset);
    // Serialize message field [green_channel]
    bufferOffset = _serializer.bool(obj.green_channel, buffer, bufferOffset);
    // Serialize message field [blue_channel]
    bufferOffset = _serializer.bool(obj.blue_channel, buffer, bufferOffset);
    // Serialize message field [any_channel]
    bufferOffset = _serializer.bool(obj.any_channel, buffer, bufferOffset);
    // Serialize message field [markers]
    bufferOffset = _serializer.bool(obj.markers, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActiveDebugTopics
    let len;
    let data = new ActiveDebugTopics(null);
    // Deserialize message field [red_channel]
    data.red_channel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [green_channel]
    data.green_channel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [blue_channel]
    data.blue_channel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [any_channel]
    data.any_channel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [markers]
    data.markers = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_vision/ActiveDebugTopics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10965b7aa16fcc09509da71fe3d98caa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ActiveDebugTopics(null);
    if (msg.red_channel !== undefined) {
      resolved.red_channel = msg.red_channel;
    }
    else {
      resolved.red_channel = false
    }

    if (msg.green_channel !== undefined) {
      resolved.green_channel = msg.green_channel;
    }
    else {
      resolved.green_channel = false
    }

    if (msg.blue_channel !== undefined) {
      resolved.blue_channel = msg.blue_channel;
    }
    else {
      resolved.blue_channel = false
    }

    if (msg.any_channel !== undefined) {
      resolved.any_channel = msg.any_channel;
    }
    else {
      resolved.any_channel = false
    }

    if (msg.markers !== undefined) {
      resolved.markers = msg.markers;
    }
    else {
      resolved.markers = false
    }

    return resolved;
    }
};

module.exports = ActiveDebugTopics;
