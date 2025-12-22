// Auto-generated. Do not edit!

// (in-package niryo_robot_rpi.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HotspotButtonStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HotspotButtonStatus
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HotspotButtonStatus
    let len;
    let data = new HotspotButtonStatus(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_rpi/HotspotButtonStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0e70f855953624e078a0ffee0bd4e2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 SHORT_PRESS = 1
    int8 LONG_PRESS = 2
    int8 VERY_LONG_PRESS = 3
    int8 IGNORE_PRESS = 4
    int8 mode
    
    int8 PRESSED = 0
    int8 RELEASED = 1
    int8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HotspotButtonStatus(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
HotspotButtonStatus.Constants = {
  SHORT_PRESS: 1,
  LONG_PRESS: 2,
  VERY_LONG_PRESS: 3,
  IGNORE_PRESS: 4,
  PRESSED: 0,
  RELEASED: 1,
}

module.exports = HotspotButtonStatus;
