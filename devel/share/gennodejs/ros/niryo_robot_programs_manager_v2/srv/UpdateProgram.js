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

class UpdateProgramRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.program_id = null;
      this.name = null;
      this.description = null;
      this.python_code = null;
      this.blockly_code = null;
    }
    else {
      if (initObj.hasOwnProperty('program_id')) {
        this.program_id = initObj.program_id
      }
      else {
        this.program_id = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('python_code')) {
        this.python_code = initObj.python_code
      }
      else {
        this.python_code = '';
      }
      if (initObj.hasOwnProperty('blockly_code')) {
        this.blockly_code = initObj.blockly_code
      }
      else {
        this.blockly_code = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateProgramRequest
    // Serialize message field [program_id]
    bufferOffset = _serializer.string(obj.program_id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [python_code]
    bufferOffset = _serializer.string(obj.python_code, buffer, bufferOffset);
    // Serialize message field [blockly_code]
    bufferOffset = _serializer.string(obj.blockly_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateProgramRequest
    let len;
    let data = new UpdateProgramRequest(null);
    // Deserialize message field [program_id]
    data.program_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [python_code]
    data.python_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [blockly_code]
    data.blockly_code = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.program_id);
    length += _getByteLength(object.name);
    length += _getByteLength(object.description);
    length += _getByteLength(object.python_code);
    length += _getByteLength(object.blockly_code);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager_v2/UpdateProgramRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb6718446a0557e90388d46c2429acaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string program_id
    string name
    string description
    string python_code
    string blockly_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateProgramRequest(null);
    if (msg.program_id !== undefined) {
      resolved.program_id = msg.program_id;
    }
    else {
      resolved.program_id = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.python_code !== undefined) {
      resolved.python_code = msg.python_code;
    }
    else {
      resolved.python_code = ''
    }

    if (msg.blockly_code !== undefined) {
      resolved.blockly_code = msg.blockly_code;
    }
    else {
      resolved.blockly_code = ''
    }

    return resolved;
    }
};

class UpdateProgramResponse {
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
    // Serializes a message object of type UpdateProgramResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int16(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateProgramResponse
    let len;
    let data = new UpdateProgramResponse(null);
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
    return 'niryo_robot_programs_manager_v2/UpdateProgramResponse';
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
    const resolved = new UpdateProgramResponse(null);
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
  Request: UpdateProgramRequest,
  Response: UpdateProgramResponse,
  md5sum() { return 'eb0c9f7450449983be4acb7cf3218c8e'; },
  datatype() { return 'niryo_robot_programs_manager_v2/UpdateProgram'; }
};
