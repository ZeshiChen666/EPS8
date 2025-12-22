
(cl:in-package :asdf)

(defsystem "niryo_robot_programs_manager_v2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :niryo_robot_programs_manager_v2-msg
)
  :components ((:file "_package")
    (:file "CreateProgram" :depends-on ("_package_CreateProgram"))
    (:file "_package_CreateProgram" :depends-on ("_package"))
    (:file "DeleteProgram" :depends-on ("_package_DeleteProgram"))
    (:file "_package_DeleteProgram" :depends-on ("_package"))
    (:file "GetProgram" :depends-on ("_package_GetProgram"))
    (:file "_package_GetProgram" :depends-on ("_package"))
    (:file "GetProgramAutorunInfos" :depends-on ("_package_GetProgramAutorunInfos"))
    (:file "_package_GetProgramAutorunInfos" :depends-on ("_package"))
    (:file "GetProgramList" :depends-on ("_package_GetProgramList"))
    (:file "_package_GetProgramList" :depends-on ("_package"))
    (:file "SetProgramAutorun" :depends-on ("_package_SetProgramAutorun"))
    (:file "_package_SetProgramAutorun" :depends-on ("_package"))
    (:file "UpdateProgram" :depends-on ("_package_UpdateProgram"))
    (:file "_package_UpdateProgram" :depends-on ("_package"))
  ))