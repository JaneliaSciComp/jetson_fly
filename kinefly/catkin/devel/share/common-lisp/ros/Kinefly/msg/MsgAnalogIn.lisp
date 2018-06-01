; Auto-generated. Do not edit!


(cl:in-package Kinefly-msg)


;//! \htmlinclude MsgAnalogIn.msg.html

(cl:defclass <MsgAnalogIn> (roslisp-msg-protocol:ros-message)
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
   (voltages
    :reader voltages
    :initarg :voltages
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MsgAnalogIn (<MsgAnalogIn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MsgAnalogIn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MsgAnalogIn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-msg:<MsgAnalogIn> is deprecated: use Kinefly-msg:MsgAnalogIn instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MsgAnalogIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:header-val is deprecated.  Use Kinefly-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <MsgAnalogIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:channels-val is deprecated.  Use Kinefly-msg:channels instead.")
  (channels m))

(cl:ensure-generic-function 'voltages-val :lambda-list '(m))
(cl:defmethod voltages-val ((m <MsgAnalogIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:voltages-val is deprecated.  Use Kinefly-msg:voltages instead.")
  (voltages m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MsgAnalogIn>) ostream)
  "Serializes a message object of type '<MsgAnalogIn>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'voltages))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'voltages))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MsgAnalogIn>) istream)
  "Deserializes a message object of type '<MsgAnalogIn>"
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
  (cl:setf (cl:slot-value msg 'voltages) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'voltages)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MsgAnalogIn>)))
  "Returns string type for a message object of type '<MsgAnalogIn>"
  "Kinefly/MsgAnalogIn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MsgAnalogIn)))
  "Returns string type for a message object of type 'MsgAnalogIn"
  "Kinefly/MsgAnalogIn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MsgAnalogIn>)))
  "Returns md5sum for a message object of type '<MsgAnalogIn>"
  "d1104d288960ba3fc4b4f45dd14127fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MsgAnalogIn)))
  "Returns md5sum for a message object of type 'MsgAnalogIn"
  "d1104d288960ba3fc4b4f45dd14127fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MsgAnalogIn>)))
  "Returns full string definition for message of type '<MsgAnalogIn>"
  (cl:format cl:nil "Header header~%int8[] channels~%float64[] voltages~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MsgAnalogIn)))
  "Returns full string definition for message of type 'MsgAnalogIn"
  (cl:format cl:nil "Header header~%int8[] channels~%float64[] voltages~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MsgAnalogIn>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'voltages) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MsgAnalogIn>))
  "Converts a ROS message object to a list"
  (cl:list 'MsgAnalogIn
    (cl:cons ':header (header msg))
    (cl:cons ':channels (channels msg))
    (cl:cons ':voltages (voltages msg))
))
