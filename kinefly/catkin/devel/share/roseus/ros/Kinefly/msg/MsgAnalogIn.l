;; Auto-generated. Do not edit!


(when (boundp 'Kinefly::MsgAnalogIn)
  (if (not (find-package "KINEFLY"))
    (make-package "KINEFLY"))
  (shadow 'MsgAnalogIn (find-package "KINEFLY")))
(unless (find-package "KINEFLY::MSGANALOGIN")
  (make-package "KINEFLY::MSGANALOGIN"))

(in-package "ROS")
;;//! \htmlinclude MsgAnalogIn.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass Kinefly::MsgAnalogIn
  :super ros::object
  :slots (_header _channels _voltages ))

(defmethod Kinefly::MsgAnalogIn
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:channels __channels) (make-array 0 :initial-element 0 :element-type :integer))
    ((:voltages __voltages) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _channels __channels)
   (setq _voltages __voltages)
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
  (:voltages
   (&optional __voltages)
   (if __voltages (setq _voltages __voltages)) _voltages)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8[] _channels
    (* 1    (length _channels)) 4
    ;; float64[] _voltages
    (* 8    (length _voltages)) 4
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
     ;; float64[] _voltages
     (write-long (length _voltages) s)
     (dotimes (i (length _voltages))
       (sys::poke (elt _voltages i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[] _voltages
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltages (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _voltages i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get Kinefly::MsgAnalogIn :md5sum-) "d1104d288960ba3fc4b4f45dd14127fa")
(setf (get Kinefly::MsgAnalogIn :datatype-) "Kinefly/MsgAnalogIn")
(setf (get Kinefly::MsgAnalogIn :definition-)
      "Header header
int8[] channels
float64[] voltages


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



(provide :Kinefly/MsgAnalogIn "d1104d288960ba3fc4b4f45dd14127fa")


