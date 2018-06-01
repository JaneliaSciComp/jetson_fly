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

class SrvFloat32ListRequest {
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
    // Serializes a message object of type SrvFloat32ListRequest
    // Serialize message field [query]
    bufferOffset = _serializer.bool(obj.query, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SrvFloat32ListRequest
    let len;
    let data = new SrvFloat32ListRequest(null);
    // Deserialize message field [query]
    data.query = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Kinefly/SrvFloat32ListRequest';
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
    const resolved = new SrvFloat32ListRequest(null);
    if (msg.query !== undefined) {
      resolved.query = msg.query;
    }
    else {
      resolved.query = false
    }

    return resolved;
    }
};

class SrvFloat32ListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SrvFloat32ListResponse
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float32(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SrvFloat32ListResponse
    let len;
    let data = new SrvFloat32ListResponse(null);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Kinefly/SrvFloat32ListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '420cd38b6b071cd49f2970c3e2cee511';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SrvFloat32ListResponse(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SrvFloat32ListRequest,
  Response: SrvFloat32ListResponse,
  md5sum() { return '29b66312516f23f8d8d7a48b07d9378a'; },
  datatype() { return 'Kinefly/SrvFloat32List'; }
};
