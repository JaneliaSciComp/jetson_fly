;; Auto-generated. Do not edit!


(when (boundp 'Kinefly::SrvWingdata)
  (if (not (find-package "KINEFLY"))
    (make-package "KINEFLY"))
  (shadow 'SrvWingdata (find-package "KINEFLY")))
(unless (find-package "KINEFLY::SRVWINGDATA")
  (make-package "KINEFLY::SRVWINGDATA"))
(unless (find-package "KINEFLY::SRVWINGDATAREQUEST")
  (make-package "KINEFLY::SRVWINGDATAREQUEST"))
(unless (find-package "KINEFLY::SRVWINGDATARESPONSE")
  (make-package "KINEFLY::SRVWINGDATARESPONSE"))

(in-package "ROS")





(defclass Kinefly::SrvWingdataRequest
  :super ros::object
  :slots (_query ))

(defmethod Kinefly::SrvWingdataRequest
  (:init
   (&key
    ((:query __query) nil)
    )
   (send-super :init)
   (setq _query __query)
   self)
  (:query
   (&optional __query)
   (if __query (setq _query __query)) _query)
  (:serialization-length
   ()
   (+
    ;; bool _query
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _query
       (if _query (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _query
     (setq _query (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass Kinefly::SrvWingdataResponse
  :super ros::object
  :slots (_angles _intensities _diffs _anglesMajor _anglesMinor ))

(defmethod Kinefly::SrvWingdataResponse
  (:init
   (&key
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:intensities __intensities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:diffs __diffs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:anglesMajor __anglesMajor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:anglesMinor __anglesMinor) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _angles __angles)
   (setq _intensities __intensities)
   (setq _diffs __diffs)
   (setq _anglesMajor __anglesMajor)
   (setq _anglesMinor __anglesMinor)
   self)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:intensities
   (&optional __intensities)
   (if __intensities (setq _intensities __intensities)) _intensities)
  (:diffs
   (&optional __diffs)
   (if __diffs (setq _diffs __diffs)) _diffs)
  (:anglesMajor
   (&optional __anglesMajor)
   (if __anglesMajor (setq _anglesMajor __anglesMajor)) _anglesMajor)
  (:anglesMinor
   (&optional __anglesMinor)
   (if __anglesMinor (setq _anglesMinor __anglesMinor)) _anglesMinor)
  (:serialization-length
   ()
   (+
    ;; float32[] _angles
    (* 4    (length _angles)) 4
    ;; float32[] _intensities
    (* 4    (length _intensities)) 4
    ;; float32[] _diffs
    (* 4    (length _diffs)) 4
    ;; float32[] _anglesMajor
    (* 4    (length _anglesMajor)) 4
    ;; float32[] _anglesMinor
    (* 4    (length _anglesMinor)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _intensities
     (write-long (length _intensities) s)
     (dotimes (i (length _intensities))
       (sys::poke (elt _intensities i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _diffs
     (write-long (length _diffs) s)
     (dotimes (i (length _diffs))
       (sys::poke (elt _diffs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _anglesMajor
     (write-long (length _anglesMajor) s)
     (dotimes (i (length _anglesMajor))
       (sys::poke (elt _anglesMajor i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _anglesMinor
     (write-long (length _anglesMinor) s)
     (dotimes (i (length _anglesMinor))
       (sys::poke (elt _anglesMinor i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _intensities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intensities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _intensities i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _diffs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _diffs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _diffs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _anglesMajor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _anglesMajor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _anglesMajor i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _anglesMinor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _anglesMinor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _anglesMinor i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass Kinefly::SrvWingdata
  :super ros::object
  :slots ())

(setf (get Kinefly::SrvWingdata :md5sum-) "0954c753798937806e030a68642c7a34")
(setf (get Kinefly::SrvWingdata :datatype-) "Kinefly/SrvWingdata")
(setf (get Kinefly::SrvWingdata :request) Kinefly::SrvWingdataRequest)
(setf (get Kinefly::SrvWingdata :response) Kinefly::SrvWingdataResponse)

(defmethod Kinefly::SrvWingdataRequest
  (:response () (instance Kinefly::SrvWingdataResponse :init)))

(setf (get Kinefly::SrvWingdataRequest :md5sum-) "0954c753798937806e030a68642c7a34")
(setf (get Kinefly::SrvWingdataRequest :datatype-) "Kinefly/SrvWingdataRequest")
(setf (get Kinefly::SrvWingdataRequest :definition-)
      "bool query
---
float32[] angles
float32[] intensities
float32[] diffs
float32[] anglesMajor
float32[] anglesMinor

")

(setf (get Kinefly::SrvWingdataResponse :md5sum-) "0954c753798937806e030a68642c7a34")
(setf (get Kinefly::SrvWingdataResponse :datatype-) "Kinefly/SrvWingdataResponse")
(setf (get Kinefly::SrvWingdataResponse :definition-)
      "bool query
---
float32[] angles
float32[] intensities
float32[] diffs
float32[] anglesMajor
float32[] anglesMinor

")



(provide :Kinefly/SrvWingdata "0954c753798937806e030a68642c7a34")


