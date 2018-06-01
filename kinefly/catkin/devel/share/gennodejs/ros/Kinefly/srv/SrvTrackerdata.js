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

class SrvTrackerdataRequest {
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
    // Serializes a message object of type SrvTrackerdataRequest
    // Serialize message field [query]
    bufferOffset = _serializer.bool(obj.query, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SrvTrackerdataRequest
    let len;
    let data = new SrvTrackerdataRequest(null);
    // Deserialize message field [query]
    data.query = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Kinefly/SrvTrackerdataRequest';
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
    const resolved = new SrvTrackerdataRequest(null);
    if (msg.query !== undefined) {
      resolved.query = msg.query;
    }
    else {
      resolved.query = false
    }

    return resolved;
    }
};

class SrvTrackerdataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.title1 = null;
      this.title2 = null;
      this.abscissa = null;
      this.intensities = null;
      this.diffs = null;
      this.markersH = null;
      this.markersV = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = '';
      }
      if (initObj.hasOwnProperty('title1')) {
        this.title1 = initObj.title1
      }
      else {
        this.title1 = '';
      }
      if (initObj.hasOwnProperty('title2')) {
        this.title2 = initObj.title2
      }
      else {
        this.title2 = '';
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
      if (initObj.hasOwnProperty('markersH')) {
        this.markersH = initObj.markersH
      }
      else {
        this.markersH = [];
      }
      if (initObj.hasOwnProperty('markersV')) {
        this.markersV = initObj.markersV
      }
      else {
        this.markersV = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SrvTrackerdataResponse
    // Serialize message field [color]
    bufferOffset = _serializer.string(obj.color, buffer, bufferOffset);
    // Serialize message field [title1]
    bufferOffset = _serializer.string(obj.title1, buffer, bufferOffset);
    // Serialize message field [title2]
    bufferOffset = _serializer.string(obj.title2, buffer, bufferOffset);
    // Serialize message field [abscissa]
    bufferOffset = _arraySerializer.float32(obj.abscissa, buffer, bufferOffset, null);
    // Serialize message field [intensities]
    bufferOffset = _arraySerializer.float32(obj.intensities, buffer, bufferOffset, null);
    // Serialize message field [diffs]
    bufferOffset = _arraySerializer.float32(obj.diffs, buffer, bufferOffset, null);
    // Serialize message field [markersH]
    bufferOffset = _arraySerializer.float32(obj.markersH, buffer, bufferOffset, null);
    // Serialize message field [markersV]
    bufferOffset = _arraySerializer.float32(obj.markersV, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SrvTrackerdataResponse
    let len;
    let data = new SrvTrackerdataResponse(null);
    // Deserialize message field [color]
    data.color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [title1]
    data.title1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [title2]
    data.title2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [abscissa]
    data.abscissa = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [intensities]
    data.intensities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [diffs]
    data.diffs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [markersH]
    data.markersH = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [markersV]
    data.markersV = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.color.length;
    length += object.title1.length;
    length += object.title2.length;
    length += 4 * object.abscissa.length;
    length += 4 * object.intensities.length;
    length += 4 * object.diffs.length;
    length += 4 * object.markersH.length;
    length += 4 * object.markersV.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Kinefly/SrvTrackerdataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6dc3a697e66363c2694c0fa5edb11a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string color
    string title1
    string title2
    float32[] abscissa
    float32[] intensities
    float32[] diffs
    float32[] markersH
    float32[] markersV
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SrvTrackerdataResponse(null);
    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = ''
    }

    if (msg.title1 !== undefined) {
      resolved.title1 = msg.title1;
    }
    else {
      resolved.title1 = ''
    }

    if (msg.title2 !== undefined) {
      resolved.title2 = msg.title2;
    }
    else {
      resolved.title2 = ''
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

    if (msg.markersH !== undefined) {
      resolved.markersH = msg.markersH;
    }
    else {
      resolved.markersH = []
    }

    if (msg.markersV !== undefined) {
      resolved.markersV = msg.markersV;
    }
    else {
      resolved.markersV = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SrvTrackerdataRequest,
  Response: SrvTrackerdataResponse,
  md5sum() { return '5213ef3e7b03bcf8c710a40803ffe14a'; },
  datatype() { return 'Kinefly/SrvTrackerdata'; }
};
