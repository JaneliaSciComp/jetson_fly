;; Auto-generated. Do not edit!


(when (boundp 'Kinefly::MsgDigitalIn)
  (if (not (find-package "KINEFLY"))
    (make-package "KINEFLY"))
  (shadow 'MsgDigitalIn (find-package "KINEFLY")))
(unless (find-package "KINEFLY::MSGDIGITALIN")
  (make-package "KINEFLY::MSGDIGITALIN"))

(in-package "ROS")
;;//! \htmlinclude MsgDigitalIn.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass Kinefly::MsgDigitalIn
  :super ros::object
  :slots (_header _channels _values ))

(defmethod Kinefly::MsgDigitalIn
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:channels __channels) (make-array 0 :initial-element 0 :element-type :integer))
    ((:values __values) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _channels __channels)
   (setq _values __values)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8[] _channels
    (* 1    (length _channels)) 4
    ;; bool[] _values
    (* 1    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8[] _channels
     (write-long (length _channels) s)
     (dotimes (i (length _channels))
       (write-byte (elt _channels i) s)
       )
     ;; bool[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (if (elt _values i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8[] _channels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channels (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _channels i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _channels i) 127) (setf (elt _channels i) (- (elt _channels i) 256)))
     ))
   ;; bool[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (make-list n))
     (dotimes (i n)
     (setf (elt _values i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get Kinefly::MsgDigitalIn :md5sum-) "5da26e28e61f2a25da0b6b81694c2b51")
(setf (get Kinefly::MsgDigitalIn :datatype-) "Kinefly/MsgDigitalIn")
(setf (get Kinefly::MsgDigitalIn :definition-)
      "Header header
int8[] channels
bool[] values


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

")



(provide :Kinefly/MsgDigitalIn "5da26e28e61f2a25da0b6b81694c2b51")


