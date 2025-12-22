// Auto-generated. Do not edit!

// (in-package niryo_robot_programs_manager_v2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Program {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.program_id = null;
      this.name = null;
      this.description = null;
      this.has_blockly = null;
      this.saved_at = null;
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
      if (initObj.hasOwnProperty('has_blockly')) {
        this.has_blockly = initObj.has_blockly
      }
      else {
        this.has_blockly = false;
      }
      if (initObj.hasOwnProperty('saved_at')) {
        this.saved_at = initObj.saved_at
      }
      else {
        this.saved_at = '';
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
    // Serializes a message object of type Program
    // Serialize message field [program_id]
    bufferOffset = _serializer.string(obj.program_id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [has_blockly]
    bufferOffset = _serializer.bool(obj.has_blockly, buffer, bufferOffset);
    // Serialize message field [saved_at]
    bufferOffset = _serializer.string(obj.saved_at, buffer, bufferOffset);
    // Serialize message field [python_code]
    bufferOffset = _serializer.string(obj.python_code, buffer, bufferOffset);
    // Serialize message field [blockly_code]
    bufferOffset = _serializer.string(obj.blockly_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Program
    let len;
    let data = new Program(null);
    // Deserialize message field [program_id]
    data.program_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [has_blockly]
    data.has_blockly = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [saved_at]
    data.saved_at = _deserializer.string(buffer, bufferOffset);
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
    length += _getByteLength(object.saved_at);
    length += _getByteLength(object.python_code);
    length += _getByteLength(object.blockly_code);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_programs_manager_v2/Program';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02cd6606b088c8d3c241a7b018a0926f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Program(null);
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

    if (msg.has_blockly !== undefined) {
      resolved.has_blockly = msg.has_blockly;
    }
    else {
      resolved.has_blockly = false
    }

    if (msg.saved_at !== undefined) {
      resolved.saved_at = msg.saved_at;
    }
    else {
      resolved.saved_at = ''
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

module.exports = Program;
