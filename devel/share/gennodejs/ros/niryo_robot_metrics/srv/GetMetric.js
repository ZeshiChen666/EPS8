// Auto-generated. Do not edit!

// (in-package niryo_robot_metrics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Metric = require('../msg/Metric.js');

//-----------------------------------------------------------

class GetMetricRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMetricRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMetricRequest
    let len;
    let data = new GetMetricRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_metrics/GetMetricRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMetricRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class GetMetricResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.metric = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('metric')) {
        this.metric = initObj.metric
      }
      else {
        this.metric = new Metric();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMetricResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [metric]
    bufferOffset = Metric.serialize(obj.metric, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMetricResponse
    let len;
    let data = new GetMetricResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [metric]
    data.metric = Metric.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Metric.getMessageSize(object.metric);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_metrics/GetMetricResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6164ae0773a5b3bd1527db0c998a792';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    niryo_robot_metrics/Metric metric
    
    ================================================================================
    MSG: niryo_robot_metrics/Metric
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
    const resolved = new GetMetricResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.metric !== undefined) {
      resolved.metric = Metric.Resolve(msg.metric)
    }
    else {
      resolved.metric = new Metric()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMetricRequest,
  Response: GetMetricResponse,
  md5sum() { return '3c7e8f79bf57a60d05456cd506c553a8'; },
  datatype() { return 'niryo_robot_metrics/GetMetric'; }
};
