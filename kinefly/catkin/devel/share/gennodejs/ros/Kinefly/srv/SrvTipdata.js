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

class SrvTipdataRequest {
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
    // Serializes a message object of type SrvTipdataRequest
    // Serialize message field [query]
    bufferOffset = _serializer.bool(obj.query, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SrvTipdataRequest
    let len;
    let data = new SrvTipdataRequest(null);
    // Deserialize message field [query]
    data.query = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Kinefly/SrvTipdataRequest';
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
    const resolved = new SrvTipdataRequest(null);
    if (msg.query !== undefined) {
      resolved.query = msg.query;
    }
    else {
      resolved.query = false
    }

    return resolved;
    }
};

class SrvTipdataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.abscissa = null;
      this.intensities = null;
      this.diffs = null;
      this.detectionH = null;
      this.detectionV = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = '';
      }
      if (initObj.hasOwnProperty('abscissa')) {
        this.abscissa = initObj.abscissa
      }
      else {
        this.abscissa = [];
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
      if (initObj.hasOwnProperty('detectionH')) {
        this.detectionH = initObj.detectionH
      }
      else {
        this.detectionH = 0.0;
      }
      if (initObj.hasOwnProperty('detectionV')) {
        this.detectionV = initObj.detectionV
      }
      else {
        this.detectionV = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SrvTipdataResponse
    // Serialize message field [color]
    bufferOffset = _serializer.string(obj.color, buffer, bufferOffset);
    // Serialize message field [abscissa]
    bufferOffset = _arraySerializer.float32(obj.abscissa, buffer, bufferOffset, null);
    // Serialize message field [intensities]
    bufferOffset = _arraySerializer.float32(obj.intensities, buffer, bufferOffset, null);
    // Serialize message field [diffs]
    bufferOffset = _arraySerializer.float32(obj.diffs, buffer, bufferOffset, null);
    // Serialize message field [detectionH]
    bufferOffset = _serializer.float32(obj.detectionH, buffer, bufferOffset);
    // Serialize message field [detectionV]
    bufferOffset = _serializer.float32(obj.detectionV, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SrvTipdataResponse
    let len;
    let data = new SrvTipdataResponse(null);
    // Deserialize message field [color]
    data.color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [abscissa]
    data.abscissa = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [intensities]
    data.intensities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [diffs]
    data.diffs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [detectionH]
    data.detectionH = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [detectionV]
    data.detectionV = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.color.length;
    length += 4 * object.abscissa.length;
    length += 4 * object.intensities.length;
    length += 4 * object.diffs.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Kinefly/SrvTipdataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d2b63ee826bf33de8f2da73c313040a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string color
    float32[] abscissa
    float32[] intensities
    float32[] diffs
    float32 detectionH
    float32 detectionV
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SrvTipdataResponse(null);
    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = ''
    }

    if (msg.abscissa !== undefined) {
      resolved.abscissa = msg.abscissa;
    }
    else {
      resolved.abscissa = []
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

    if (msg.detectionH !== undefined) {
      resolved.detectionH = msg.detectionH;
    }
    else {
      resolved.detectionH = 0.0
    }

    if (msg.detectionV !== undefined) {
      resolved.detectionV = msg.detectionV;
    }
    else {
      resolved.detectionV = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SrvTipdataRequest,
  Response: SrvTipdataResponse,
  md5sum() { return 'dfbfbbdaf6b697dcfe44a2c6db1262ae'; },
  datatype() { return 'Kinefly/SrvTipdata'; }
};
