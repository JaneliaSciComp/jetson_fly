; Auto-generated. Do not edit!


(cl:in-package Kinefly-msg)


;//! \htmlinclude MsgDigitalIn.msg.html

(cl:defclass <MsgDigitalIn> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (channels
    :reader channels
    :initarg :channels
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass MsgDigitalIn (<MsgDigitalIn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MsgDigitalIn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MsgDigitalIn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-msg:<MsgDigitalIn> is deprecated: use Kinefly-msg:MsgDigitalIn instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MsgDigitalIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:header-val is deprecated.  Use Kinefly-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <MsgDigitalIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:channels-val is deprecated.  Use Kinefly-msg:channels instead.")
  (channels m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <MsgDigitalIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:values-val is deprecated.  Use Kinefly-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MsgDigitalIn>) ostream)
  "Serializes a message object of type '<MsgDigitalIn>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'channels))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MsgDigitalIn>) istream)
  "Deserializes a message object of type '<MsgDigitalIn>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MsgDigitalIn>)))
  "Returns string type for a message object of type '<MsgDigitalIn>"
  "Kinefly/MsgDigitalIn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MsgDigitalIn)))
  "Returns string type for a message object of type 'MsgDigitalIn"
  "Kinefly/MsgDigitalIn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MsgDigitalIn>)))
  "Returns md5sum for a message object of type '<MsgDigitalIn>"
  "5da26e28e61f2a25da0b6b81694c2b51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MsgDigitalIn)))
  "Returns md5sum for a message object of type 'MsgDigitalIn"
  "5da26e28e61f2a25da0b6b81694c2b51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MsgDigitalIn>)))
  "Returns full string definition for message of type '<MsgDigitalIn>"
  (cl:format cl:nil "Header header~%int8[] channels~%bool[] values~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MsgDigitalIn)))
  "Returns full string definition for message of type 'MsgDigitalIn"
  (cl:format cl:nil "Header header~%int8[] channels~%bool[] values~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MsgDigitalIn>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MsgDigitalIn>))
  "Converts a ROS message object to a list"
  (cl:list 'MsgDigitalIn
    (cl:cons ':header (header msg))
    (cl:cons ':channels (channels msg))
    (cl:cons ':values (values msg))
))
