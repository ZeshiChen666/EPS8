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

class SetProgramAutorunRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.program_id = null;
      this.mode = null;
    }
    else {
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
    // Serializes a message object of type SetProgramAutorunRequest
    // Serialize message field [program_id]
    bufferOffset = _serializer.string(obj.program_id, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetProgramAutorunRequest
    let len;
    let data = new SetProgramAutorunRequest(null);
    // Deserialize message field [program_id]
    data.program_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.program_id);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager_v2/SetProgramAutorunRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c59b81ad49067049c82904b639588f12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Program id
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
    const resolved = new SetProgramAutorunRequest(null);
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
SetProgramAutorunRequest.Constants = {
  DISABLE: 0,
  ONE_SHOT: 1,
  LOOP: 2,
}

class SetProgramAutorunResponse {
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
    // Serializes a message object of type SetProgramAutorunResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int16(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetProgramAutorunResponse
    let len;
    let data = new SetProgramAutorunResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager_v2/SetProgramAutorunResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09803e1f4a40b6f2352e453a75b02d0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 status
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetProgramAutorunResponse(null);
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
  Request: SetProgramAutorunRequest,
  Response: SetProgramAutorunResponse,
  md5sum() { return 'bf5e2880d3da99b3a480c54d6ac54425'; },
  datatype() { return 'niryo_robot_programs_manager_v2/SetProgramAutorun'; }
};
