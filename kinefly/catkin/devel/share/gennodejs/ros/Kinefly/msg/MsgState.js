// Auto-generated. Do not edit!

// (in-package Kinefly.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MsgState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angles = null;
      this.gradients = null;
      this.radii = null;
      this.freq = null;
      this.intensity = null;
    }
    else {
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
      if (initObj.hasOwnProperty('gradients')) {
        this.gradients = initObj.gradients
      }
      else {
        this.gradients = [];
      }
      if (initObj.hasOwnProperty('radii')) {
        this.radii = initObj.radii
      }
      else {
        this.radii = [];
      }
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0.0;
      }
      if (initObj.hasOwnProperty('intensity')) {
        this.intensity = initObj.intensity
      }
      else {
        this.intensity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MsgState
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float64(obj.angles, buffer, bufferOffset, null);
    // Serialize message field [gradients]
    bufferOffset = _arraySerializer.float64(obj.gradients, buffer, bufferOffset, null);
    // Serialize message field [radii]
    bufferOffset = _arraySerializer.float64(obj.radii, buffer, bufferOffset, null);
    // Serialize message field [freq]
    bufferOffset = _serializer.float64(obj.freq, buffer, bufferOffset);
    // Serialize message field [intensity]
    bufferOffset = _serializer.float64(obj.intensity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MsgState
    let len;
    let data = new MsgState(null);
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [gradients]
    data.gradients = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [radii]
    data.radii = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [freq]
    data.freq = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [intensity]
    data.intensity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.angles.length;
    length += 8 * object.gradients.length;
    length += 8 * object.radii.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'Kinefly/MsgState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3756d4b54fc38e1deb413f8fefd8833';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MsgState(null);
    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    if (msg.gradients !== undefined) {
      resolved.gradients = msg.gradients;
    }
    else {
      resolved.gradients = []
    }

    if (msg.radii !== undefined) {
      resolved.radii = msg.radii;
    }
    else {
      resolved.radii = []
    }

    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0.0
    }

    if (msg.intensity !== undefined) {
      resolved.intensity = msg.intensity;
    }
    else {
      resolved.intensity = 0.0
    }

    return resolved;
    }
};

module.exports = MsgState;
