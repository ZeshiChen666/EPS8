// Auto-generated. Do not edit!

// (in-package niryo_robot_metrics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Metric {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.value = null;
      this.unit = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = '';
      }
      if (initObj.hasOwnProperty('unit')) {
        this.unit = initObj.unit
      }
      else {
        this.unit = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Metric
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.string(obj.value, buffer, bufferOffset);
    // Serialize message field [unit]
    bufferOffset = _serializer.string(obj.unit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Metric
    let len;
    let data = new Metric(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unit]
    data.unit = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.value);
    length += _getByteLength(object.unit);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_metrics/Metric';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '898aa783673b4282b5ca67c01b7159da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string value
    string unit
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Metric(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = ''
    }

    if (msg.unit !== undefined) {
      resolved.unit = msg.unit;
    }
    else {
      resolved.unit = ''
    }

    return resolved;
    }
};

module.exports = Metric;
