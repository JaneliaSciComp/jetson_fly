// Auto-generated. Do not edit!

// (in-package Kinefly.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SrvWingdataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.query = null;
    }
    else {
      if (initObj.hasOwnProperty('query')) {
        this.query = initObj.query
      }
      else {
        this.query = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SrvWingdataRequest
    // Serialize message field [query]
    bufferOffset = _serializer.bool(obj.query, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SrvWingdataRequest
    let len;
    let data = new SrvWingdataRequest(null);
    // Deserialize message field [query]
    data.query = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Kinefly/SrvWingdataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd56f052dde9259c4dd003e064bd410a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool query
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SrvWingdataRequest(null);
    if (msg.query !== undefined) {
      resolved.query = msg.query;
    }
    else {
      resolved.query = false
    }

    return resolved;
    }
};

class SrvWingdataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angles = null;
      this.intensities = null;
      this.diffs = null;
      this.anglesMajor = null;
      this.anglesMinor = null;
    }
    else {
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
      if (initObj.hasOwnProperty('intensities')) {
        this.intensities = initObj.intensities
      }
      else {
        this.intensities = [];
      }
      if (initObj.hasOwnProperty('diffs')) {
        this.diffs = initObj.diffs
      }
      else {
        this.diffs = [];
      }
      if (initObj.hasOwnProperty('anglesMajor')) {
        this.anglesMajor = initObj.anglesMajor
      }
      else {
        this.anglesMajor = [];
      }
      if (initObj.hasOwnProperty('anglesMinor')) {
        this.anglesMinor = initObj.anglesMinor
      }
      else {
        this.anglesMinor = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SrvWingdataResponse
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float32(obj.angles, buffer, bufferOffset, null);
    // Serialize message field [intensities]
    bufferOffset = _arraySerializer.float32(obj.intensities, buffer, bufferOffset, null);
    // Serialize message field [diffs]
    bufferOffset = _arraySerializer.float32(obj.diffs, buffer, bufferOffset, null);
    // Serialize message field [anglesMajor]
    bufferOffset = _arraySerializer.float32(obj.anglesMajor, buffer, bufferOffset, null);
    // Serialize message field [anglesMinor]
    bufferOffset = _arraySerializer.float32(obj.anglesMinor, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SrvWingdataResponse
    let len;
    let data = new SrvWingdataResponse(null);
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [intensities]
    data.intensities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [diffs]
    data.diffs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [anglesMajor]
    data.anglesMajor = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [anglesMinor]
    data.anglesMinor = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.angles.length;
    length += 4 * object.intensities.length;
    length += 4 * object.diffs.length;
    length += 4 * object.anglesMajor.length;
    length += 4 * object.anglesMinor.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Kinefly/SrvWingdataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad7d85edd0c1f0635498153160f1a904';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] angles
    float32[] intensities
    float32[] diffs
    float32[] anglesMajor
    float32[] anglesMinor
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SrvWingdataResponse(null);
    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    if (msg.intensities !== undefined) {
      resolved.intensities = msg.intensities;
    }
    else {
      resolved.intensities = []
    }

    if (msg.diffs !== undefined) {
      resolved.diffs = msg.diffs;
    }
    else {
      resolved.diffs = []
    }

    if (msg.anglesMajor !== undefined) {
      resolved.anglesMajor = msg.anglesMajor;
    }
    else {
      resolved.anglesMajor = []
    }

    if (msg.anglesMinor !== undefined) {
      resolved.anglesMinor = msg.anglesMinor;
    }
    else {
      resolved.anglesMinor = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SrvWingdataRequest,
  Response: SrvWingdataResponse,
  md5sum() { return '0954c753798937806e030a68642c7a34'; },
  datatype() { return 'Kinefly/SrvWingdata'; }
};
