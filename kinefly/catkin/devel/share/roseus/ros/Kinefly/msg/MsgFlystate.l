;; Auto-generated. Do not edit!


(when (boundp 'Kinefly::MsgFlystate)
  (if (not (find-package "KINEFLY"))
    (make-package "KINEFLY"))
  (shadow 'MsgFlystate (find-package "KINEFLY")))
(unless (find-package "KINEFLY::MSGFLYSTATE")
  (make-package "KINEFLY::MSGFLYSTATE"))

(in-package "ROS")
;;//! \htmlinclude MsgFlystate.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass Kinefly::MsgFlystate
  :super ros::object
  :slots (_header _head _abdomen _left _right _aux ))

(defmethod Kinefly::MsgFlystate
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:head __head) (instance Kinefly::MsgState :init))
    ((:abdomen __abdomen) (instance Kinefly::MsgState :init))
    ((:left __left) (instance Kinefly::MsgState :init))
    ((:right __right) (instance Kinefly::MsgState :init))
    ((:aux __aux) (instance Kinefly::MsgState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _head __head)
   (setq _abdomen __abdomen)
   (setq _left __left)
   (setq _right __right)
   (setq _aux __aux)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:abdomen
   (&rest __abdomen)
   (if (keywordp (car __abdomen))
       (send* _abdomen __abdomen)
     (progn
       (if __abdomen (setq _abdomen (car __abdomen)))
       _abdomen)))
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:aux
   (&rest __aux)
   (if (keywordp (car __aux))
       (send* _aux __aux)
     (progn
       (if __aux (setq _aux (car __aux)))
       _aux)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; Kinefly/MsgState _head
    (send _head :serialization-length)
    ;; Kinefly/MsgState _abdomen
    (send _abdomen :serialization-length)
    ;; Kinefly/MsgState _left
    (send _left :serialization-length)
    ;; Kinefly/MsgState _right
    (send _right :serialization-length)
    ;; Kinefly/MsgState _aux
    (send _aux :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; Kinefly/MsgState _head
       (send _head :serialize s)
     ;; Kinefly/MsgState _abdomen
       (send _abdomen :serialize s)
     ;; Kinefly/MsgState _left
       (send _left :serialize s)
     ;; Kinefly/MsgState _right
       (send _right :serialize s)
     ;; Kinefly/MsgState _aux
       (send _aux :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; Kinefly/MsgState _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; Kinefly/MsgState _abdomen
     (send _abdomen :deserialize buf ptr-) (incf ptr- (send _abdomen :serialization-length))
   ;; Kinefly/MsgState _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; Kinefly/MsgState _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;; Kinefly/MsgState _aux
     (send _aux :deserialize buf ptr-) (incf ptr- (send _aux :serialization-length))
   ;;
   self)
  )

(setf (get Kinefly::MsgFlystate :md5sum-) "805e203f09167a53749bb837921c9afe")
(setf (get Kinefly::MsgFlystate :datatype-) "Kinefly/MsgFlystate")
(setf (get Kinefly::MsgFlystate :definition-)
      "Header    header
MsgState  head
MsgState  abdomen
MsgState  left
MsgState  right
MsgState  aux

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: Kinefly/MsgState
float64[] angles
float64[] gradients
float64[] radii
float64 freq
float64 intensity

")



(provide :Kinefly/MsgFlystate "805e203f09167a53749bb837921c9afe")


