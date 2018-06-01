;; Auto-generated. Do not edit!


(when (boundp 'Kinefly::MsgState)
  (if (not (find-package "KINEFLY"))
    (make-package "KINEFLY"))
  (shadow 'MsgState (find-package "KINEFLY")))
(unless (find-package "KINEFLY::MSGSTATE")
  (make-package "KINEFLY::MSGSTATE"))

(in-package "ROS")
;;//! \htmlinclude MsgState.msg.html


(defclass Kinefly::MsgState
  :super ros::object
  :slots (_angles _gradients _radii _freq _intensity ))

(defmethod Kinefly::MsgState
  (:init
   (&key
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gradients __gradients) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:radii __radii) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:freq __freq) 0.0)
    ((:intensity __intensity) 0.0)
    )
   (send-super :init)
   (setq _angles __angles)
   (setq _gradients __gradients)
   (setq _radii __radii)
   (setq _freq (float __freq))
   (setq _intensity (float __intensity))
   self)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:gradients
   (&optional __gradients)
   (if __gradients (setq _gradients __gradients)) _gradients)
  (:radii
   (&optional __radii)
   (if __radii (setq _radii __radii)) _radii)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:intensity
   (&optional __intensity)
   (if __intensity (setq _intensity __intensity)) _intensity)
  (:serialization-length
   ()
   (+
    ;; float64[] _angles
    (* 8    (length _angles)) 4
    ;; float64[] _gradients
    (* 8    (length _gradients)) 4
    ;; float64[] _radii
    (* 8    (length _radii)) 4
    ;; float64 _freq
    8
    ;; float64 _intensity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _gradients
     (write-long (length _gradients) s)
     (dotimes (i (length _gradients))
       (sys::poke (elt _gradients i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _radii
     (write-long (length _radii) s)
     (dotimes (i (length _radii))
       (sys::poke (elt _radii i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _freq
       (sys::poke _freq (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _intensity
       (sys::poke _intensity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _gradients
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gradients (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gradients i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _radii
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _radii (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _radii i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _freq
     (setq _freq (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _intensity
     (setq _intensity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get Kinefly::MsgState :md5sum-) "c3756d4b54fc38e1deb413f8fefd8833")
(setf (get Kinefly::MsgState :datatype-) "Kinefly/MsgState")
(setf (get Kinefly::MsgState :definition-)
      "float64[] angles
float64[] gradients
float64[] radii
float64 freq
float64 intensity

")



(provide :Kinefly/MsgState "c3756d4b54fc38e1deb413f8fefd8833")


