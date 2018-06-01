;; Auto-generated. Do not edit!


(when (boundp 'Kinefly::MsgCommand)
  (if (not (find-package "KINEFLY"))
    (make-package "KINEFLY"))
  (shadow 'MsgCommand (find-package "KINEFLY")))
(unless (find-package "KINEFLY::MSGCOMMAND")
  (make-package "KINEFLY::MSGCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MsgCommand.msg.html


(defclass Kinefly::MsgCommand
  :super ros::object
  :slots (_command ))

(defmethod Kinefly::MsgCommand
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get Kinefly::MsgCommand :md5sum-) "cba5e21e920a3a2b7b375cb65b64cdea")
(setf (get Kinefly::MsgCommand :datatype-) "Kinefly/MsgCommand")
(setf (get Kinefly::MsgCommand :definition-)
      "string command

")



(provide :Kinefly/MsgCommand "cba5e21e920a3a2b7b375cb65b64cdea")


