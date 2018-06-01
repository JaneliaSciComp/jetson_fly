; Auto-generated. Do not edit!


(cl:in-package Kinefly-srv)


;//! \htmlinclude SrvFloat32List-request.msg.html

(cl:defclass <SrvFloat32List-request> (roslisp-msg-protocol:ros-message)
  ((query
    :reader query
    :initarg :query
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SrvFloat32List-request (<SrvFloat32List-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvFloat32List-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvFloat32List-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-srv:<SrvFloat32List-request> is deprecated: use Kinefly-srv:SrvFloat32List-request instead.")))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <SrvFloat32List-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:query-val is deprecated.  Use Kinefly-srv:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvFloat32List-request>) ostream)
  "Serializes a message object of type '<SrvFloat32List-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'query) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvFloat32List-request>) istream)
  "Deserializes a message object of type '<SrvFloat32List-request>"
    (cl:setf (cl:slot-value msg 'query) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvFloat32List-request>)))
  "Returns string type for a service object of type '<SrvFloat32List-request>"
  "Kinefly/SrvFloat32ListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvFloat32List-request)))
  "Returns string type for a service object of type 'SrvFloat32List-request"
  "Kinefly/SrvFloat32ListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvFloat32List-request>)))
  "Returns md5sum for a message object of type '<SrvFloat32List-request>"
  "29b66312516f23f8d8d7a48b07d9378a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvFloat32List-request)))
  "Returns md5sum for a message object of type 'SrvFloat32List-request"
  "29b66312516f23f8d8d7a48b07d9378a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvFloat32List-request>)))
  "Returns full string definition for message of type '<SrvFloat32List-request>"
  (cl:format cl:nil "bool query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvFloat32List-request)))
  "Returns full string definition for message of type 'SrvFloat32List-request"
  (cl:format cl:nil "bool query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvFloat32List-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvFloat32List-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvFloat32List-request
    (cl:cons ':query (query msg))
))
;//! \htmlinclude SrvFloat32List-response.msg.html

(cl:defclass <SrvFloat32List-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SrvFloat32List-response (<SrvFloat32List-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvFloat32List-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvFloat32List-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-srv:<SrvFloat32List-response> is deprecated: use Kinefly-srv:SrvFloat32List-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SrvFloat32List-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:data-val is deprecated.  Use Kinefly-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvFloat32List-response>) ostream)
  "Serializes a message object of type '<SrvFloat32List-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvFloat32List-response>) istream)
  "Deserializes a message object of type '<SrvFloat32List-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvFloat32List-response>)))
  "Returns string type for a service object of type '<SrvFloat32List-response>"
  "Kinefly/SrvFloat32ListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvFloat32List-response)))
  "Returns string type for a service object of type 'SrvFloat32List-response"
  "Kinefly/SrvFloat32ListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvFloat32List-response>)))
  "Returns md5sum for a message object of type '<SrvFloat32List-response>"
  "29b66312516f23f8d8d7a48b07d9378a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvFloat32List-response)))
  "Returns md5sum for a message object of type 'SrvFloat32List-response"
  "29b66312516f23f8d8d7a48b07d9378a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvFloat32List-response>)))
  "Returns full string definition for message of type '<SrvFloat32List-response>"
  (cl:format cl:nil "float32[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvFloat32List-response)))
  "Returns full string definition for message of type 'SrvFloat32List-response"
  (cl:format cl:nil "float32[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvFloat32List-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvFloat32List-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvFloat32List-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SrvFloat32List)))
  'SrvFloat32List-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SrvFloat32List)))
  'SrvFloat32List-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvFloat32List)))
  "Returns string type for a service object of type '<SrvFloat32List>"
  "Kinefly/SrvFloat32List")