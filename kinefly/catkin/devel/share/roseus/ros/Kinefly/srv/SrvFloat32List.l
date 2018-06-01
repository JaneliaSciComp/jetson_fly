;; Auto-generated. Do not edit!


(when (boundp 'Kinefly::SrvFloat32List)
  (if (not (find-package "KINEFLY"))
    (make-package "KINEFLY"))
  (shadow 'SrvFloat32List (find-package "KINEFLY")))
(unless (find-package "KINEFLY::SRVFLOAT32LIST")
  (make-package "KINEFLY::SRVFLOAT32LIST"))
(unless (find-package "KINEFLY::SRVFLOAT32LISTREQUEST")
  (make-package "KINEFLY::SRVFLOAT32LISTREQUEST"))
(unless (find-package "KINEFLY::SRVFLOAT32LISTRESPONSE")
  (make-package "KINEFLY::SRVFLOAT32LISTRESPONSE"))

(in-package "ROS")





(defclass Kinefly::SrvFloat32ListRequest
  :super ros::object
  :slots (_query ))

(defmethod Kinefly::SrvFloat32ListRequest
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

(defclass Kinefly::SrvFloat32ListResponse
  :super ros::object
  :slots (_data ))

(defmethod Kinefly::SrvFloat32ListResponse
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

(defclass Kinefly::SrvFloat32List
  :super ros::object
  :slots ())

(setf (get Kinefly::SrvFloat32List :md5sum-) "29b66312516f23f8d8d7a48b07d9378a")
(setf (get Kinefly::SrvFloat32List :datatype-) "Kinefly/SrvFloat32List")
(setf (get Kinefly::SrvFloat32List :request) Kinefly::SrvFloat32ListRequest)
(setf (get Kinefly::SrvFloat32List :response) Kinefly::SrvFloat32ListResponse)

(defmethod Kinefly::SrvFloat32ListRequest
  (:response () (instance Kinefly::SrvFloat32ListResponse :init)))

(setf (get Kinefly::SrvFloat32ListRequest :md5sum-) "29b66312516f23f8d8d7a48b07d9378a")
(setf (get Kinefly::SrvFloat32ListRequest :datatype-) "Kinefly/SrvFloat32ListRequest")
(setf (get Kinefly::SrvFloat32ListRequest :definition-)
      "bool query
---
float32[] data

")

(setf (get Kinefly::SrvFloat32ListResponse :md5sum-) "29b66312516f23f8d8d7a48b07d9378a")
(setf (get Kinefly::SrvFloat32ListResponse :datatype-) "Kinefly/SrvFloat32ListResponse")
(setf (get Kinefly::SrvFloat32ListResponse :definition-)
      "bool query
---
float32[] data

")



(provide :Kinefly/SrvFloat32List "29b66312516f23f8d8d7a48b07d9378a")


