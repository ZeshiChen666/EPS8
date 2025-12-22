// Auto-generated. Do not edit!

// (in-package niryo_robot_programs_manager_v2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Program = require('../msg/Program.js');

//-----------------------------------------------------------

class GetProgramListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProgramListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProgramListRequest
    let len;
    let data = new GetProgramListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager_v2/GetProgramListRequest';
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
    const resolved = new GetProgramListRequest(null);
    return resolved;
    }
};

class GetProgramListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.programs = null;
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
      if (initObj.hasOwnProperty('programs')) {
        this.programs = initObj.programs
      }
      else {
        this.programs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProgramListResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [programs]
    // Serialize the length for message field [programs]
    bufferOffset = _serializer.uint32(obj.programs.length, buffer, bufferOffset);
    obj.programs.forEach((val) => {
      bufferOffset = Program.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProgramListResponse
    let len;
    let data = new GetProgramListResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [programs]
    // Deserialize array length for message field [programs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.programs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.programs[i] = Program.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    object.programs.forEach((val) => {
      length += Program.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager_v2/GetProgramListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b71139d068539b14853901004189dc3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    niryo_robot_programs_manager_v2/Program[] programs
    
    ================================================================================
    MSG: niryo_robot_programs_manager_v2/Program
    string program_id
    string name
    string description
    bool has_blockly
    string saved_at
    string python_code
    string blockly_code
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetProgramListResponse(null);
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

    if (msg.programs !== undefined) {
      resolved.programs = new Array(msg.programs.length);
      for (let i = 0; i < resolved.programs.length; ++i) {
        resolved.programs[i] = Program.Resolve(msg.programs[i]);
      }
    }
    else {
      resolved.programs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetProgramListRequest,
  Response: GetProgramListResponse,
  md5sum() { return 'b71139d068539b14853901004189dc3a'; },
  datatype() { return 'niryo_robot_programs_manager_v2/GetProgramList'; }
};
