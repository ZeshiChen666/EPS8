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

class GetProgramRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.program_id = null;
    }
    else {
      if (initObj.hasOwnProperty('program_id')) {
        this.program_id = initObj.program_id
      }
      else {
        this.program_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProgramRequest
    // Serialize message field [program_id]
    bufferOffset = _serializer.string(obj.program_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProgramRequest
    let len;
    let data = new GetProgramRequest(null);
    // Deserialize message field [program_id]
    data.program_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.program_id);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager_v2/GetProgramRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c74b4df6f78c8a2f4b510da9469347e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string program_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetProgramRequest(null);
    if (msg.program_id !== undefined) {
      resolved.program_id = msg.program_id;
    }
    else {
      resolved.program_id = ''
    }

    return resolved;
    }
};

class GetProgramResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.program = null;
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
      if (initObj.hasOwnProperty('program')) {
        this.program = initObj.program
      }
      else {
        this.program = new Program();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProgramResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [program]
    bufferOffset = Program.serialize(obj.program, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProgramResponse
    let len;
    let data = new GetProgramResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [program]
    data.program = Program.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += Program.getMessageSize(object.program);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager_v2/GetProgramResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee43df81d9d47ceecd35625da3a7f2c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    niryo_robot_programs_manager_v2/Program program
    
    
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
    const resolved = new GetProgramResponse(null);
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

    if (msg.program !== undefined) {
      resolved.program = Program.Resolve(msg.program)
    }
    else {
      resolved.program = new Program()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetProgramRequest,
  Response: GetProgramResponse,
  md5sum() { return '0ade8b5e1fdf93f0f73c30b7ca75dcce'; },
  datatype() { return 'niryo_robot_programs_manager_v2/GetProgram'; }
};
