
(cl:in-package :asdf)

(defsystem "Kinefly-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SrvFloat32List" :depends-on ("_package_SrvFloat32List"))
    (:file "_package_SrvFloat32List" :depends-on ("_package"))
    (:file "SrvTipdata" :depends-on ("_package_SrvTipdata"))
    (:file "_package_SrvTipdata" :depends-on ("_package"))
    (:file "SrvTrackerdata" :depends-on ("_package_SrvTrackerdata"))
    (:file "_package_SrvTrackerdata" :depends-on ("_package"))
    (:file "SrvWingdata" :depends-on ("_package_SrvWingdata"))
    (:file "_package_SrvWingdata" :depends-on ("_package"))
  ))