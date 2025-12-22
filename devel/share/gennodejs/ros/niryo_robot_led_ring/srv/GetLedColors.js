// Auto-generated. Do not edit!

// (in-package niryo_robot_led_ring.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GetLedColorsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLedColorsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLedColorsRequest
    let len;
    let data = new GetLedColorsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_led_ring/GetLedColorsRequest';
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
    const resolved = new GetLedColorsRequest(null);
    return resolved;
    }
};

class GetLedColorsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.led_ring_colors = null;
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('led_ring_colors')) {
        this.led_ring_colors = initObj.led_ring_colors
      }
      else {
        this.led_ring_colors = [];
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
    // Serializes a message object of type GetLedColorsResponse
    // Serialize message field [led_ring_colors]
    // Serialize the length for message field [led_ring_colors]
    bufferOffset = _serializer.uint32(obj.led_ring_colors.length, buffer, bufferOffset);
    obj.led_ring_colors.forEach((val) => {
      bufferOffset = std_msgs.msg.ColorRGBA.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLedColorsResponse
    let len;
    let data = new GetLedColorsResponse(null);
    // Deserialize message field [led_ring_colors]
    // Deserialize array length for message field [led_ring_colors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.led_ring_colors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.led_ring_colors[i] = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.led_ring_colors.length;
    length += _getByteLength(object.message);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_led_ring/GetLedColorsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a00eb631a727c358bd52d7c6213b37a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/ColorRGBA[] led_ring_colors
    int32 status
    string message
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetLedColorsResponse(null);
    if (msg.led_ring_colors !== undefined) {
      resolved.led_ring_colors = new Array(msg.led_ring_colors.length);
      for (let i = 0; i < resolved.led_ring_colors.length; ++i) {
        resolved.led_ring_colors[i] = std_msgs.msg.ColorRGBA.Resolve(msg.led_ring_colors[i]);
      }
    }
    else {
      resolved.led_ring_colors = []
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
  Request: GetLedColorsRequest,
  Response: GetLedColorsResponse,
  md5sum() { return 'a00eb631a727c358bd52d7c6213b37a5'; },
  datatype() { return 'niryo_robot_led_ring/GetLedColors'; }
};
