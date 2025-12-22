
(cl:in-package :asdf)

(defsystem "niryo_robot_programs_manager_v2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ExecuteProgramAction" :depends-on ("_package_ExecuteProgramAction"))
    (:file "_package_ExecuteProgramAction" :depends-on ("_package"))
    (:file "ExecuteProgramActionFeedback" :depends-on ("_package_ExecuteProgramActionFeedback"))
    (:file "_package_ExecuteProgramActionFeedback" :depends-on ("_package"))
    (:file "ExecuteProgramActionGoal" :depends-on ("_package_ExecuteProgramActionGoal"))
    (:file "_package_ExecuteProgramActionGoal" :depends-on ("_package"))
    (:file "ExecuteProgramActionResult" :depends-on ("_package_ExecuteProgramActionResult"))
    (:file "_package_ExecuteProgramActionResult" :depends-on ("_package"))
    (:file "ExecuteProgramFeedback" :depends-on ("_package_ExecuteProgramFeedback"))
    (:file "_package_ExecuteProgramFeedback" :depends-on ("_package"))
    (:file "ExecuteProgramGoal" :depends-on ("_package_ExecuteProgramGoal"))
    (:file "_package_ExecuteProgramGoal" :depends-on ("_package"))
    (:file "ExecuteProgramResult" :depends-on ("_package_ExecuteProgramResult"))
    (:file "_package_ExecuteProgramResult" :depends-on ("_package"))
    (:file "Program" :depends-on ("_package_Program"))
    (:file "_package_Program" :depends-on ("_package"))
    (:file "ProgramList" :depends-on ("_package_ProgramList"))
    (:file "_package_ProgramList" :depends-on ("_package"))
  ))