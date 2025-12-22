// Auto-generated. Do not edit!

// (in-package niryo_robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetFloatListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFloatListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFloatListRequest
    let len;
    let data = new GetFloatListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_msgs/GetFloatListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFloatListRequest(null);
    return resolved;
    }
};

class GetFloatListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.values = null;
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
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
    // Serializes a message object of type GetFloatListResponse
    // Serialize message field [values]
    bufferOffset = _arraySerializer.float32(obj.values, buffer, bufferOffset, null);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFloatListResponse
    let len;
    let data = new GetFloatListResponse(null);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.values.length;
    length += _getByteLength(object.message);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_msgs/GetFloatListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4451316e97dfda37b6fe1ea8066c7c25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] values
    int32 status
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFloatListResponse(null);
    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
    }

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
  Request: GetFloatListRequest,
  Response: GetFloatListResponse,
  md5sum() { return '4451316e97dfda37b6fe1ea8066c7c25'; },
  datatype() { return 'niryo_robot_msgs/GetFloatList'; }
};
