
(cl:in-package :asdf)

(defsystem "joints_interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FactoryCalibration" :depends-on ("_package_FactoryCalibration"))
    (:file "_package_FactoryCalibration" :depends-on ("_package"))
  ))