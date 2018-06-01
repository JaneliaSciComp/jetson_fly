;; Auto-generated. Do not edit!


(when (boundp 'Kinefly::SrvTrackerdata)
  (if (not (find-package "KINEFLY"))
    (make-package "KINEFLY"))
  (shadow 'SrvTrackerdata (find-package "KINEFLY")))
(unless (find-package "KINEFLY::SRVTRACKERDATA")
  (make-package "KINEFLY::SRVTRACKERDATA"))
(unless (find-package "KINEFLY::SRVTRACKERDATAREQUEST")
  (make-package "KINEFLY::SRVTRACKERDATAREQUEST"))
(unless (find-package "KINEFLY::SRVTRACKERDATARESPONSE")
  (make-package "KINEFLY::SRVTRACKERDATARESPONSE"))

(in-package "ROS")





(defclass Kinefly::SrvTrackerdataRequest
  :super ros::object
  :slots (_query ))

(defmethod Kinefly::SrvTrackerdataRequest
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

(defclass Kinefly::SrvTrackerdataResponse
  :super ros::object
  :slots (_color _title1 _title2 _abscissa _intensities _diffs _markersH _markersV ))

(defmethod Kinefly::SrvTrackerdataResponse
  (:init
   (&key
    ((:color __color) "")
    ((:title1 __title1) "")
    ((:title2 __title2) "")
    ((:abscissa __abscissa) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:intensities __intensities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:diffs __diffs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:markersH __markersH) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:markersV __markersV) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _color (string __color))
   (setq _title1 (string __title1))
   (setq _title2 (string __title2))
   (setq _abscissa __abscissa)
   (setq _intensities __intensities)
   (setq _diffs __diffs)
   (setq _markersH __markersH)
   (setq _markersV __markersV)
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:title1
   (&optional __title1)
   (if __title1 (setq _title1 __title1)) _title1)
  (:title2
   (&optional __title2)
   (if __title2 (setq _title2 __title2)) _title2)
  (:abscissa
   (&optional __abscissa)
   (if __abscissa (setq _abscissa __abscissa)) _abscissa)
  (:intensities
   (&optional __intensities)
   (if __intensities (setq _intensities __intensities)) _intensities)
  (:diffs
   (&optional __diffs)
   (if __diffs (setq _diffs __diffs)) _diffs)
  (:markersH
   (&optional __markersH)
   (if __markersH (setq _markersH __markersH)) _markersH)
  (:markersV
   (&optional __markersV)
   (if __markersV (setq _markersV __markersV)) _markersV)
  (:serialization-length
   ()
   (+
    ;; string _color
    4 (length _color)
    ;; string _title1
    4 (length _title1)
    ;; string _title2
    4 (length _title2)
    ;; float32[] _abscissa
    (* 4    (length _abscissa)) 4
    ;; float32[] _intensities
    (* 4    (length _intensities)) 4
    ;; float32[] _diffs
    (* 4    (length _diffs)) 4
    ;; float32[] _markersH
    (* 4    (length _markersH)) 4
    ;; float32[] _markersV
    (* 4    (length _markersV)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; string _title1
       (write-long (length _title1) s) (princ _title1 s)
     ;; string _title2
       (write-long (length _title2) s) (princ _title2 s)
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
     ;; float32[] _markersH
     (write-long (length _markersH) s)
     (dotimes (i (length _markersH))
       (sys::poke (elt _markersH i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _markersV
     (write-long (length _markersV) s)
     (dotimes (i (length _markersV))
       (sys::poke (elt _markersV i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _title1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _title2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;; float32[] _markersH
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markersH (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _markersH i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _markersV
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markersV (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _markersV i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass Kinefly::SrvTrackerdata
  :super ros::object
  :slots ())

(setf (get Kinefly::SrvTrackerdata :md5sum-) "5213ef3e7b03bcf8c710a40803ffe14a")
(setf (get Kinefly::SrvTrackerdata :datatype-) "Kinefly/SrvTrackerdata")
(setf (get Kinefly::SrvTrackerdata :request) Kinefly::SrvTrackerdataRequest)
(setf (get Kinefly::SrvTrackerdata :response) Kinefly::SrvTrackerdataResponse)

(defmethod Kinefly::SrvTrackerdataRequest
  (:response () (instance Kinefly::SrvTrackerdataResponse :init)))

(setf (get Kinefly::SrvTrackerdataRequest :md5sum-) "5213ef3e7b03bcf8c710a40803ffe14a")
(setf (get Kinefly::SrvTrackerdataRequest :datatype-) "Kinefly/SrvTrackerdataRequest")
(setf (get Kinefly::SrvTrackerdataRequest :definition-)
      "bool query
---
string color
string title1
string title2
float32[] abscissa
float32[] intensities
float32[] diffs
float32[] markersH
float32[] markersV

")

(setf (get Kinefly::SrvTrackerdataResponse :md5sum-) "5213ef3e7b03bcf8c710a40803ffe14a")
(setf (get Kinefly::SrvTrackerdataResponse :datatype-) "Kinefly/SrvTrackerdataResponse")
(setf (get Kinefly::SrvTrackerdataResponse :definition-)
      "bool query
---
string color
string title1
string title2
float32[] abscissa
float32[] intensities
float32[] diffs
float32[] markersH
float32[] markersV

")



(provide :Kinefly/SrvTrackerdata "5213ef3e7b03bcf8c710a40803ffe14a")


