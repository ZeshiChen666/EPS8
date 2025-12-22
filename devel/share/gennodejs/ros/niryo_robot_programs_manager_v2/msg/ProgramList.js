// Auto-generated. Do not edit!

// (in-package niryo_robot_programs_manager_v2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Program = require('./Program.js');

//-----------------------------------------------------------

class ProgramList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.programs = null;
    }
    else {
      if (initObj.hasOwnProperty('programs')) {
        this.programs = initObj.programs
      }
      else {
        this.programs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProgramList
    // Serialize message field [programs]
    // Serialize the length for message field [programs]
    bufferOffset = _serializer.uint32(obj.programs.length, buffer, bufferOffset);
    obj.programs.forEach((val) => {
      bufferOffset = Program.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProgramList
    let len;
    let data = new ProgramList(null);
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
    object.programs.forEach((val) => {
      length += Program.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_programs_manager_v2/ProgramList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5a3eee4c3101d45b45d481eeb8521cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ProgramList(null);
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

module.exports = ProgramList;
