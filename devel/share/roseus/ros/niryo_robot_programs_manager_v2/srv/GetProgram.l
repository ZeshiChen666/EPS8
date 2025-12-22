;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager_v2::GetProgram)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
  (shadow 'GetProgram (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAM")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAM"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_programs_manager_v2::GetProgramRequest
  :super ros::object
  :slots (_program_id ))

(defmethod niryo_robot_programs_manager_v2::GetProgramRequest
  (:init
   (&key
    ((:program_id __program_id) "")
    )
   (send-super :init)
   (setq _program_id (string __program_id))
   self)
  (:program_id
   (&optional __program_id)
   (if __program_id (setq _program_id __program_id)) _program_id)
  (:serialization-length
   ()
   (+
    ;; string _program_id
    4 (length _program_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _program_id
       (write-long (length _program_id) s) (princ _program_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _program_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _program_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager_v2::GetProgramResponse
  :super ros::object
  :slots (_status _message _program ))

(defmethod niryo_robot_programs_manager_v2::GetProgramResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:program __program) (instance niryo_robot_programs_manager_v2::Program :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _program __program)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:program
   (&rest __program)
   (if (keywordp (car __program))
       (send* _program __program)
     (progn
       (if __program (setq _program (car __program)))
       _program)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; niryo_robot_programs_manager_v2/Program _program
    (send _program :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; niryo_robot_programs_manager_v2/Program _program
       (send _program :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_robot_programs_manager_v2/Program _program
     (send _program :deserialize buf ptr-) (incf ptr- (send _program :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager_v2::GetProgram
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager_v2::GetProgram :md5sum-) "0ade8b5e1fdf93f0f73c30b7ca75dcce")
(setf (get niryo_robot_programs_manager_v2::GetProgram :datatype-) "niryo_robot_programs_manager_v2/GetProgram")
(setf (get niryo_robot_programs_manager_v2::GetProgram :request) niryo_robot_programs_manager_v2::GetProgramRequest)
(setf (get niryo_robot_programs_manager_v2::GetProgram :response) niryo_robot_programs_manager_v2::GetProgramResponse)

(defmethod niryo_robot_programs_manager_v2::GetProgramRequest
  (:response () (instance niryo_robot_programs_manager_v2::GetProgramResponse :init)))

(setf (get niryo_robot_programs_manager_v2::GetProgramRequest :md5sum-) "0ade8b5e1fdf93f0f73c30b7ca75dcce")
(setf (get niryo_robot_programs_manager_v2::GetProgramRequest :datatype-) "niryo_robot_programs_manager_v2/GetProgramRequest")
(setf (get niryo_robot_programs_manager_v2::GetProgramRequest :definition-)
      "string program_id
---
int32 status
string message
niryo_robot_programs_manager_v2/Program program


================================================================================
MSG: niryo_robot_programs_manager_v2/Program
string program_id
string name
string description
bool has_blockly
string saved_at
string python_code
")

(setf (get niryo_robot_programs_manager_v2::GetProgramResponse :md5sum-) "0ade8b5e1fdf93f0f73c30b7ca75dcce")
(setf (get niryo_robot_programs_manager_v2::GetProgramResponse :datatype-) "niryo_robot_programs_manager_v2/GetProgramResponse")
(setf (get niryo_robot_programs_manager_v2::GetProgramResponse :definition-)
      "string program_id
---
int32 status
string message
niryo_robot_programs_manager_v2/Program program


================================================================================
MSG: niryo_robot_programs_manager_v2/Program
string program_id
string name
string description
bool has_blockly
string saved_at
string python_code
")



(provide :niryo_robot_programs_manager_v2/GetProgram "0ade8b5e1fdf93f0f73c30b7ca75dcce")


