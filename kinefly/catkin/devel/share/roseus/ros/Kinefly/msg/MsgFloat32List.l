;; Auto-generated. Do not edit!


(when (boundp 'Kinefly::MsgFloat32List)
  (if (not (find-package "KINEFLY"))
    (make-package "KINEFLY"))
  (shadow 'MsgFloat32List (find-package "KINEFLY")))
(unless (find-package "KINEFLY::MSGFLOAT32LIST")
  (make-package "KINEFLY::MSGFLOAT32LIST"))

(in-package "ROS")
;;//! \htmlinclude MsgFloat32List.msg.html


(defclass Kinefly::MsgFloat32List
  :super ros::object
  :slots (_data ))

(defmethod Kinefly::MsgFloat32List
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get Kinefly::MsgFloat32List :md5sum-) "420cd38b6b071cd49f2970c3e2cee511")
(setf (get Kinefly::MsgFloat32List :datatype-) "Kinefly/MsgFloat32List")
(setf (get Kinefly::MsgFloat32List :definition-)
      "float32[] data

")



(provide :Kinefly/MsgFloat32List "420cd38b6b071cd49f2970c3e2cee511")


