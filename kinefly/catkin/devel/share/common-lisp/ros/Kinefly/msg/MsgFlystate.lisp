; Auto-generated. Do not edit!


(cl:in-package Kinefly-msg)


;//! \htmlinclude MsgFlystate.msg.html

(cl:defclass <MsgFlystate> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (head
    :reader head
    :initarg :head
    :type Kinefly-msg:MsgState
    :initform (cl:make-instance 'Kinefly-msg:MsgState))
   (abdomen
    :reader abdomen
    :initarg :abdomen
    :type Kinefly-msg:MsgState
    :initform (cl:make-instance 'Kinefly-msg:MsgState))
   (left
    :reader left
    :initarg :left
    :type Kinefly-msg:MsgState
    :initform (cl:make-instance 'Kinefly-msg:MsgState))
   (right
    :reader right
    :initarg :right
    :type Kinefly-msg:MsgState
    :initform (cl:make-instance 'Kinefly-msg:MsgState))
   (aux
    :reader aux
    :initarg :aux
    :type Kinefly-msg:MsgState
    :initform (cl:make-instance 'Kinefly-msg:MsgState)))
)

(cl:defclass MsgFlystate (<MsgFlystate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MsgFlystate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MsgFlystate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-msg:<MsgFlystate> is deprecated: use Kinefly-msg:MsgFlystate instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MsgFlystate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:header-val is deprecated.  Use Kinefly-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <MsgFlystate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:head-val is deprecated.  Use Kinefly-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'abdomen-val :lambda-list '(m))
(cl:defmethod abdomen-val ((m <MsgFlystate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:abdomen-val is deprecated.  Use Kinefly-msg:abdomen instead.")
  (abdomen m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <MsgFlystate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:left-val is deprecated.  Use Kinefly-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <MsgFlystate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:right-val is deprecated.  Use Kinefly-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'aux-val :lambda-list '(m))
(cl:defmethod aux-val ((m <MsgFlystate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-msg:aux-val is deprecated.  Use Kinefly-msg:aux instead.")
  (aux m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MsgFlystate>) ostream)
  "Serializes a message object of type '<MsgFlystate>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'abdomen) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'aux) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MsgFlystate>) istream)
  "Deserializes a message object of type '<MsgFlystate>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'abdomen) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'aux) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MsgFlystate>)))
  "Returns string type for a message object of type '<MsgFlystate>"
  "Kinefly/MsgFlystate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MsgFlystate)))
  "Returns string type for a message object of type 'MsgFlystate"
  "Kinefly/MsgFlystate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MsgFlystate>)))
  "Returns md5sum for a message object of type '<MsgFlystate>"
  "805e203f09167a53749bb837921c9afe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MsgFlystate)))
  "Returns md5sum for a message object of type 'MsgFlystate"
  "805e203f09167a53749bb837921c9afe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MsgFlystate>)))
  "Returns full string definition for message of type '<MsgFlystate>"
  (cl:format cl:nil "Header    header~%MsgState  head~%MsgState  abdomen~%MsgState  left~%MsgState  right~%MsgState  aux~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: Kinefly/MsgState~%float64[] angles~%float64[] gradients~%float64[] radii~%float64 freq~%float64 intensity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MsgFlystate)))
  "Returns full string definition for message of type 'MsgFlystate"
  (cl:format cl:nil "Header    header~%MsgState  head~%MsgState  abdomen~%MsgState  left~%MsgState  right~%MsgState  aux~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: Kinefly/MsgState~%float64[] angles~%float64[] gradients~%float64[] radii~%float64 freq~%float64 intensity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MsgFlystate>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'abdomen))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'aux))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MsgFlystate>))
  "Converts a ROS message object to a list"
  (cl:list 'MsgFlystate
    (cl:cons ':header (header msg))
    (cl:cons ':head (head msg))
    (cl:cons ':abdomen (abdomen msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':aux (aux msg))
))
