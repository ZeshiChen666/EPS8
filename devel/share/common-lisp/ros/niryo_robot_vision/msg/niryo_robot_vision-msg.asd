
(cl:in-package :asdf)

(defsystem "niryo_robot_vision-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ActiveDebugTopics" :depends-on ("_package_ActiveDebugTopics"))
    (:file "_package_ActiveDebugTopics" :depends-on ("_package"))
    (:file "ImageParameters" :depends-on ("_package_ImageParameters"))
    (:file "_package_ImageParameters" :depends-on ("_package"))
  ))