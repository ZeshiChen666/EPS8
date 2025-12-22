// Auto-generated. Do not edit!

// (in-package niryo_robot_poses_handlers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let niryo_robot_msgs = _finder('niryo_robot_msgs');

//-----------------------------------------------------------

class NiryoPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.description = null;
      this.pose_version = null;
      this.tcp_version = null;
      this.joints = null;
      this.position = null;
      this.rpy = null;
      this.orientation = null;
    }
    else {
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
      if (initObj.hasOwnProperty('pose_version')) {
        this.pose_version = initObj.pose_version
      }
      else {
        this.pose_version = 0;
      }
      if (initObj.hasOwnProperty('tcp_version')) {
        this.tcp_version = initObj.tcp_version
      }
      else {
        this.tcp_version = '';
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = new niryo_robot_msgs.msg.RPY();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NiryoPose
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [pose_version]
    bufferOffset = _serializer.int32(obj.pose_version, buffer, bufferOffset);
    // Serialize message field [tcp_version]
    bufferOffset = _serializer.string(obj.tcp_version, buffer, bufferOffset);
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float64(obj.joints, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [rpy]
    bufferOffset = niryo_robot_msgs.msg.RPY.serialize(obj.rpy, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NiryoPose
    let len;
    let data = new NiryoPose(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose_version]
    data.pose_version = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tcp_version]
    data.tcp_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy]
    data.rpy = niryo_robot_msgs.msg.RPY.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.description);
    length += _getByteLength(object.tcp_version);
    length += 8 * object.joints.length;
    return length + 100;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_poses_handlers/NiryoPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bcd0369d8cce243430e535c4a02553c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string description
    
    int32 pose_version
    string tcp_version
    
    float64[] joints 
    geometry_msgs/Point position
    niryo_robot_msgs/RPY rpy
    geometry_msgs/Quaternion orientation
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: niryo_robot_msgs/RPY
    # roll, pitch and yaw
    
    float64 roll
    float64 pitch
    float64 yaw
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NiryoPose(null);
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

    if (msg.pose_version !== undefined) {
      resolved.pose_version = msg.pose_version;
    }
    else {
      resolved.pose_version = 0
    }

    if (msg.tcp_version !== undefined) {
      resolved.tcp_version = msg.tcp_version;
    }
    else {
      resolved.tcp_version = ''
    }

    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = niryo_robot_msgs.msg.RPY.Resolve(msg.rpy)
    }
    else {
      resolved.rpy = new niryo_robot_msgs.msg.RPY()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    return resolved;
    }
};

module.exports = NiryoPose;
