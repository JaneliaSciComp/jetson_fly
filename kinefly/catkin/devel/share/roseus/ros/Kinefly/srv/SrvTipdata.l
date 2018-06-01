;; Auto-generated. Do not edit!


(when (boundp 'Kinefly::SrvTipdata)
  (if (not (find-package "KINEFLY"))
    (make-package "KINEFLY"))
  (shadow 'SrvTipdata (find-package "KINEFLY")))
(unless (find-package "KINEFLY::SRVTIPDATA")
  (make-package "KINEFLY::SRVTIPDATA"))
(unless (find-package "KINEFLY::SRVTIPDATAREQUEST")
  (make-package "KINEFLY::SRVTIPDATAREQUEST"))
(unless (find-package "KINEFLY::SRVTIPDATARESPONSE")
  (make-package "KINEFLY::SRVTIPDATARESPONSE"))

(in-package "ROS")





(defclass Kinefly::SrvTipdataRequest
  :super ros::object
  :slots (_query ))

(defmethod Kinefly::SrvTipdataRequest
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

(defclass Kinefly::SrvTipdataResponse
  :super ros::object
  :slots (_color _abscissa _intensities _diffs _detectionH _detectionV ))

(defmethod Kinefly::SrvTipdataResponse
  (:init
   (&key
    ((:color __color) "")
    ((:abscissa __abscissa) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:intensities __intensities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:diffs __diffs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:detectionH __detectionH) 0.0)
    ((:detectionV __detectionV) 0.0)
    )
   (send-super :init)
   (setq _color (string __color))
   (setq _abscissa __abscissa)
   (setq _intensities __intensities)
   (setq _diffs __diffs)
   (setq _detectionH (float __detectionH))
   (setq _detectionV (float __detectionV))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:abscissa
   (&optional __abscissa)
   (if __abscissa (setq _abscissa __abscissa)) _abscissa)
  (:intensities
   (&optional __intensities)
   (if __intensities (setq _intensities __intensities)) _intensities)
  (:diffs
   (&optional __diffs)
   (if __diffs (setq _diffs __diffs)) _diffs)
  (:detectionH
   (&optional __detectionH)
   (if __detectionH (setq _detectionH __detectionH)) _detectionH)
  (:detectionV
   (&optional __detectionV)
   (if __detectionV (setq _detectionV __detectionV)) _detectionV)
  (:serialization-length
   ()
   (+
    ;; string _color
    4 (length _color)
    ;; float32[] _abscissa
    (* 4    (length _abscissa)) 4
    ;; float32[] _intensities
    (* 4    (length _intensities)) 4
    ;; float32[] _diffs
    (* 4    (length _diffs)) 4
    ;; float32 _detectionH
    4
    ;; float32 _detectionV
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; float32[] _abscissa
     (write-long (length _abscissa) s)
     (dotimes (i (length _abscissa))
       (sys::poke (elt _abscissa i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
     ;; float32 _detectionH
       (sys::poke _detectionH (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _detectionV
       (sys::poke _detectionV (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _abscissa
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _abscissa (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _abscissa i) (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;; float32 _detectionH
     (setq _detectionH (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _detectionV
     (setq _detectionV (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass Kinefly::SrvTipdata
  :super ros::object
  :slots ())

(setf (get Kinefly::SrvTipdata :md5sum-) "dfbfbbdaf6b697dcfe44a2c6db1262ae")
(setf (get Kinefly::SrvTipdata :datatype-) "Kinefly/SrvTipdata")
(setf (get Kinefly::SrvTipdata :request) Kinefly::SrvTipdataRequest)
(setf (get Kinefly::SrvTipdata :response) Kinefly::SrvTipdataResponse)

(defmethod Kinefly::SrvTipdataRequest
  (:response () (instance Kinefly::SrvTipdataResponse :init)))

(setf (get Kinefly::SrvTipdataRequest :md5sum-) "dfbfbbdaf6b697dcfe44a2c6db1262ae")
(setf (get Kinefly::SrvTipdataRequest :datatype-) "Kinefly/SrvTipdataRequest")
(setf (get Kinefly::SrvTipdataRequest :definition-)
      "bool query
---
string color
float32[] abscissa
float32[] intensities
float32[] diffs
float32 detectionH
float32 detectionV

")

(setf (get Kinefly::SrvTipdataResponse :md5sum-) "dfbfbbdaf6b697dcfe44a2c6db1262ae")
(setf (get Kinefly::SrvTipdataResponse :datatype-) "Kinefly/SrvTipdataResponse")
(setf (get Kinefly::SrvTipdataResponse :definition-)
      "bool query
---
string color
float32[] abscissa
float32[] intensities
float32[] diffs
float32 detectionH
float32 detectionV

")



(provide :Kinefly/SrvTipdata "dfbfbbdaf6b697dcfe44a2c6db1262ae")


