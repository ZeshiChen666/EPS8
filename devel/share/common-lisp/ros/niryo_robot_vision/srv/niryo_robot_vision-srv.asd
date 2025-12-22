
(cl:in-package :asdf)

(defsystem "niryo_robot_vision-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :niryo_robot_msgs-msg
               :niryo_robot_vision-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ActivateDebugTopics" :depends-on ("_package_ActivateDebugTopics"))
    (:file "_package_ActivateDebugTopics" :depends-on ("_package"))
    (:file "DebugColorDetection" :depends-on ("_package_DebugColorDetection"))
    (:file "_package_DebugColorDetection" :depends-on ("_package"))
    (:file "DebugMarkers" :depends-on ("_package_DebugMarkers"))
    (:file "_package_DebugMarkers" :depends-on ("_package"))
    (:file "ObjDetection" :depends-on ("_package_ObjDetection"))
    (:file "_package_ObjDetection" :depends-on ("_package"))
    (:file "SetImageParameter" :depends-on ("_package_SetImageParameter"))
    (:file "_package_SetImageParameter" :depends-on ("_package"))
  ))