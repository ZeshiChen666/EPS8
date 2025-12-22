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


//-----------------------------------------------------------

class GetProgramAutorunInfosRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProgramAutorunInfosRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProgramAutorunInfosRequest
    let len;
    let data = new GetProgramAutorunInfosRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager_v2/GetProgramAutorunInfosRequest';
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
    const resolved = new GetProgramAutorunInfosRequest(null);
    return resolved;
    }
};

class GetProgramAutorunInfosResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.program_id = null;
      this.mode = null;
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
      if (initObj.hasOwnProperty('program_id')) {
        this.program_id = initObj.program_id
      }
      else {
        this.program_id = '';
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProgramAutorunInfosResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [program_id]
    bufferOffset = _serializer.string(obj.program_id, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProgramAutorunInfosResponse
    let len;
    let data = new GetProgramAutorunInfosResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [program_id]
    data.program_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += _getByteLength(object.program_id);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager_v2/GetProgramAutorunInfosResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8981d6a455c23b2e3b12e77054c6e8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    string program_id
    
    # Mode
    int8 DISABLE = 0
    int8 ONE_SHOT = 1
    int8 LOOP = 2
    
    int8 mode
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetProgramAutorunInfosResponse(null);
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

    if (msg.program_id !== undefined) {
      resolved.program_id = msg.program_id;
    }
    else {
      resolved.program_id = ''
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

// Constants for message
GetProgramAutorunInfosResponse.Constants = {
  DISABLE: 0,
  ONE_SHOT: 1,
  LOOP: 2,
}

module.exports = {
  Request: GetProgramAutorunInfosRequest,
  Response: GetProgramAutorunInfosResponse,
  md5sum() { return 'e8981d6a455c23b2e3b12e77054c6e8d'; },
  datatype() { return 'niryo_robot_programs_manager_v2/GetProgramAutorunInfos'; }
};
