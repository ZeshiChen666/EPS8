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

let BasicObject = require('../msg/BasicObject.js');

//-----------------------------------------------------------

class GetNameDescriptionListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNameDescriptionListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNameDescriptionListRequest
    let len;
    let data = new GetNameDescriptionListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_msgs/GetNameDescriptionListRequest';
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
    const resolved = new GetNameDescriptionListRequest(null);
    return resolved;
    }
};

class GetNameDescriptionListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.name_list = null;
      this.description_list = null;
      this.objects = null;
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
      if (initObj.hasOwnProperty('name_list')) {
        this.name_list = initObj.name_list
      }
      else {
        this.name_list = [];
      }
      if (initObj.hasOwnProperty('description_list')) {
        this.description_list = initObj.description_list
      }
      else {
        this.description_list = [];
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNameDescriptionListResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [name_list]
    bufferOffset = _arraySerializer.string(obj.name_list, buffer, bufferOffset, null);
    // Serialize message field [description_list]
    bufferOffset = _arraySerializer.string(obj.description_list, buffer, bufferOffset, null);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = BasicObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNameDescriptionListResponse
    let len;
    let data = new GetNameDescriptionListResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name_list]
    data.name_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [description_list]
    data.description_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = BasicObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    object.name_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.description_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.objects.forEach((val) => {
      length += BasicObject.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_msgs/GetNameDescriptionListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9eff00794274414fcb8d225743b92508';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    # this service embed both old and new way to structure the datas in order to stay compatible with NS1/2
    string[] name_list
    string[] description_list
    BasicObject[] objects
    
    ================================================================================
    MSG: niryo_robot_msgs/BasicObject
    string name
    string description
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNameDescriptionListResponse(null);
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

    if (msg.name_list !== undefined) {
      resolved.name_list = msg.name_list;
    }
    else {
      resolved.name_list = []
    }

    if (msg.description_list !== undefined) {
      resolved.description_list = msg.description_list;
    }
    else {
      resolved.description_list = []
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = BasicObject.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetNameDescriptionListRequest,
  Response: GetNameDescriptionListResponse,
  md5sum() { return '9eff00794274414fcb8d225743b92508'; },
  datatype() { return 'niryo_robot_msgs/GetNameDescriptionList'; }
};
