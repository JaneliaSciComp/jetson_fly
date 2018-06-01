
(cl:in-package :asdf)

(defsystem "Kinefly-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MsgAnalogIn" :depends-on ("_package_MsgAnalogIn"))
    (:file "_package_MsgAnalogIn" :depends-on ("_package"))
    (:file "MsgCommand" :depends-on ("_package_MsgCommand"))
    (:file "_package_MsgCommand" :depends-on ("_package"))
    (:file "MsgDigitalIn" :depends-on ("_package_MsgDigitalIn"))
    (:file "_package_MsgDigitalIn" :depends-on ("_package"))
    (:file "MsgFloat32List" :depends-on ("_package_MsgFloat32List"))
    (:file "_package_MsgFloat32List" :depends-on ("_package"))
    (:file "MsgFlystate" :depends-on ("_package_MsgFlystate"))
    (:file "_package_MsgFlystate" :depends-on ("_package"))
    (:file "MsgState" :depends-on ("_package_MsgState"))
    (:file "_package_MsgState" :depends-on ("_package"))
  ))