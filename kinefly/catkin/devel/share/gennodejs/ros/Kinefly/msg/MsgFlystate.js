// Auto-generated. Do not edit!

// (in-package Kinefly.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MsgState = require('./MsgState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MsgFlystate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.head = null;
      this.abdomen = null;
      this.left = null;
      this.right = null;
      this.aux = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new MsgState();
      }
      if (initObj.hasOwnProperty('abdomen')) {
        this.abdomen = initObj.abdomen
      }
      else {
        this.abdomen = new MsgState();
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = new MsgState();
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = new MsgState();
      }
      if (initObj.hasOwnProperty('aux')) {
        this.aux = initObj.aux
      }
      else {
        this.aux = new MsgState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MsgFlystate
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [head]
    bufferOffset = MsgState.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [abdomen]
    bufferOffset = MsgState.serialize(obj.abdomen, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = MsgState.serialize(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = MsgState.serialize(obj.right, buffer, bufferOffset);
    // Serialize message field [aux]
    bufferOffset = MsgState.serialize(obj.aux, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MsgFlystate
    let len;
    let data = new MsgFlystate(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [head]
    data.head = MsgState.deserialize(buffer, bufferOffset);
    // Deserialize message field [abdomen]
    data.abdomen = MsgState.deserialize(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = MsgState.deserialize(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = MsgState.deserialize(buffer, bufferOffset);
    // Deserialize message field [aux]
    data.aux = MsgState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += MsgState.getMessageSize(object.head);
    length += MsgState.getMessageSize(object.abdomen);
    length += MsgState.getMessageSize(object.left);
    length += MsgState.getMessageSize(object.right);
    length += MsgState.getMessageSize(object.aux);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'Kinefly/MsgFlystate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '805e203f09167a53749bb837921c9afe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header    header
    MsgState  head
    MsgState  abdomen
    MsgState  left
    MsgState  right
    MsgState  aux
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: Kinefly/MsgState
    float64[] angles
    float64[] gradients
    float64[] radii
    float64 freq
    float64 intensity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MsgFlystate(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.head !== undefined) {
      resolved.head = MsgState.Resolve(msg.head)
    }
    else {
      resolved.head = new MsgState()
    }

    if (msg.abdomen !== undefined) {
      resolved.abdomen = MsgState.Resolve(msg.abdomen)
    }
    else {
      resolved.abdomen = new MsgState()
    }

    if (msg.left !== undefined) {
      resolved.left = MsgState.Resolve(msg.left)
    }
    else {
      resolved.left = new MsgState()
    }

    if (msg.right !== undefined) {
      resolved.right = MsgState.Resolve(msg.right)
    }
    else {
      resolved.right = new MsgState()
    }

    if (msg.aux !== undefined) {
      resolved.aux = MsgState.Resolve(msg.aux)
    }
    else {
      resolved.aux = new MsgState()
    }

    return resolved;
    }
};

module.exports = MsgFlystate;
