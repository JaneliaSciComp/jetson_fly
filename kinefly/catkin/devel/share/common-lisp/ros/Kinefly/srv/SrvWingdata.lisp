; Auto-generated. Do not edit!


(cl:in-package Kinefly-srv)


;//! \htmlinclude SrvWingdata-request.msg.html

(cl:defclass <SrvWingdata-request> (roslisp-msg-protocol:ros-message)
  ((query
    :reader query
    :initarg :query
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SrvWingdata-request (<SrvWingdata-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvWingdata-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvWingdata-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-srv:<SrvWingdata-request> is deprecated: use Kinefly-srv:SrvWingdata-request instead.")))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <SrvWingdata-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:query-val is deprecated.  Use Kinefly-srv:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvWingdata-request>) ostream)
  "Serializes a message object of type '<SrvWingdata-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'query) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvWingdata-request>) istream)
  "Deserializes a message object of type '<SrvWingdata-request>"
    (cl:setf (cl:slot-value msg 'query) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvWingdata-request>)))
  "Returns string type for a service object of type '<SrvWingdata-request>"
  "Kinefly/SrvWingdataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvWingdata-request)))
  "Returns string type for a service object of type 'SrvWingdata-request"
  "Kinefly/SrvWingdataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvWingdata-request>)))
  "Returns md5sum for a message object of type '<SrvWingdata-request>"
  "0954c753798937806e030a68642c7a34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvWingdata-request)))
  "Returns md5sum for a message object of type 'SrvWingdata-request"
  "0954c753798937806e030a68642c7a34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvWingdata-request>)))
  "Returns full string definition for message of type '<SrvWingdata-request>"
  (cl:format cl:nil "bool query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvWingdata-request)))
  "Returns full string definition for message of type 'SrvWingdata-request"
  (cl:format cl:nil "bool query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvWingdata-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvWingdata-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvWingdata-request
    (cl:cons ':query (query msg))
))
;//! \htmlinclude SrvWingdata-response.msg.html

(cl:defclass <SrvWingdata-response> (roslisp-msg-protocol:ros-message)
  ((angles
    :reader angles
    :initarg :angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (intensities
    :reader intensities
    :initarg :intensities
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (diffs
    :reader diffs
    :initarg :diffs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (anglesMajor
    :reader anglesMajor
    :initarg :anglesMajor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (anglesMinor
    :reader anglesMinor
    :initarg :anglesMinor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SrvWingdata-response (<SrvWingdata-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvWingdata-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvWingdata-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-srv:<SrvWingdata-response> is deprecated: use Kinefly-srv:SrvWingdata-response instead.")))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <SrvWingdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:angles-val is deprecated.  Use Kinefly-srv:angles instead.")
  (angles m))

(cl:ensure-generic-function 'intensities-val :lambda-list '(m))
(cl:defmethod intensities-val ((m <SrvWingdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:intensities-val is deprecated.  Use Kinefly-srv:intensities instead.")
  (intensities m))

(cl:ensure-generic-function 'diffs-val :lambda-list '(m))
(cl:defmethod diffs-val ((m <SrvWingdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:diffs-val is deprecated.  Use Kinefly-srv:diffs instead.")
  (diffs m))

(cl:ensure-generic-function 'anglesMajor-val :lambda-list '(m))
(cl:defmethod anglesMajor-val ((m <SrvWingdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:anglesMajor-val is deprecated.  Use Kinefly-srv:anglesMajor instead.")
  (anglesMajor m))

(cl:ensure-generic-function 'anglesMinor-val :lambda-list '(m))
(cl:defmethod anglesMinor-val ((m <SrvWingdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:anglesMinor-val is deprecated.  Use Kinefly-srv:anglesMinor instead.")
  (anglesMinor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvWingdata-response>) ostream)
  "Serializes a message object of type '<SrvWingdata-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intensities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'intensities))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'diffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'diffs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'anglesMajor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'anglesMajor))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'anglesMinor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'anglesMinor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvWingdata-response>) istream)
  "Deserializes a message object of type '<SrvWingdata-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intensities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intensities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'diffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'diffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'anglesMajor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'anglesMajor)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'anglesMinor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'anglesMinor)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvWingdata-response>)))
  "Returns string type for a service object of type '<SrvWingdata-response>"
  "Kinefly/SrvWingdataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvWingdata-response)))
  "Returns string type for a service object of type 'SrvWingdata-response"
  "Kinefly/SrvWingdataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvWingdata-response>)))
  "Returns md5sum for a message object of type '<SrvWingdata-response>"
  "0954c753798937806e030a68642c7a34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvWingdata-response)))
  "Returns md5sum for a message object of type 'SrvWingdata-response"
  "0954c753798937806e030a68642c7a34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvWingdata-response>)))
  "Returns full string definition for message of type '<SrvWingdata-response>"
  (cl:format cl:nil "float32[] angles~%float32[] intensities~%float32[] diffs~%float32[] anglesMajor~%float32[] anglesMinor~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvWingdata-response)))
  "Returns full string definition for message of type 'SrvWingdata-response"
  (cl:format cl:nil "float32[] angles~%float32[] intensities~%float32[] diffs~%float32[] anglesMajor~%float32[] anglesMinor~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvWingdata-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intensities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'diffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'anglesMajor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'anglesMinor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvWingdata-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvWingdata-response
    (cl:cons ':angles (angles msg))
    (cl:cons ':intensities (intensities msg))
    (cl:cons ':diffs (diffs msg))
    (cl:cons ':anglesMajor (anglesMajor msg))
    (cl:cons ':anglesMinor (anglesMinor msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SrvWingdata)))
  'SrvWingdata-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SrvWingdata)))
  'SrvWingdata-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvWingdata)))
  "Returns string type for a service object of type '<SrvWingdata>"
  "Kinefly/SrvWingdata")