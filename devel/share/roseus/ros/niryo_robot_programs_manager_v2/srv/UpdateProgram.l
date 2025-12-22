;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager_v2::UpdateProgram)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
  (shadow 'UpdateProgram (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::UPDATEPROGRAM")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::UPDATEPROGRAM"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::UPDATEPROGRAMREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::UPDATEPROGRAMREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::UPDATEPROGRAMRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::UPDATEPROGRAMRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_programs_manager_v2::UpdateProgramRequest
  :super ros::object
  :slots (_program_id _name _description _python_code _blockly_code ))

(defmethod niryo_robot_programs_manager_v2::UpdateProgramRequest
  (:init
   (&key
    ((:program_id __program_id) "")
    ((:name __name) "")
    ((:description __description) "")
    ((:python_code __python_code) "")
    ((:blockly_code __blockly_code) "")
    )
   (send-super :init)
   (setq _program_id (string __program_id))
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _python_code (string __python_code))
   (setq _blockly_code (string __blockly_code))
   self)
  (:program_id
   (&optional __program_id)
   (if __program_id (setq _program_id __program_id)) _program_id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:python_code
   (&optional __python_code)
   (if __python_code (setq _python_code __python_code)) _python_code)
  (:blockly_code
   (&optional __blockly_code)
   (if __blockly_code (setq _blockly_code __blockly_code)) _blockly_code)
  (:serialization-length
   ()
   (+
    ;; string _program_id
    4 (length _program_id)
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; string _python_code
    4 (length _python_code)
    ;; string _blockly_code
    4 (length _blockly_code)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _program_id
       (write-long (length _program_id) s) (princ _program_id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _python_code
       (write-long (length _python_code) s) (princ _python_code s)
     ;; string _blockly_code
       (write-long (length _blockly_code) s) (princ _blockly_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _program_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _program_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _python_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _python_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _blockly_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _blockly_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager_v2::UpdateProgramResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_programs_manager_v2::UpdateProgramResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int16 _status
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _status
       (write-word _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager_v2::UpdateProgram
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager_v2::UpdateProgram :md5sum-) "eb0c9f7450449983be4acb7cf3218c8e")
(setf (get niryo_robot_programs_manager_v2::UpdateProgram :datatype-) "niryo_robot_programs_manager_v2/UpdateProgram")
(setf (get niryo_robot_programs_manager_v2::UpdateProgram :request) niryo_robot_programs_manager_v2::UpdateProgramRequest)
(setf (get niryo_robot_programs_manager_v2::UpdateProgram :response) niryo_robot_programs_manager_v2::UpdateProgramResponse)

(defmethod niryo_robot_programs_manager_v2::UpdateProgramRequest
  (:response () (instance niryo_robot_programs_manager_v2::UpdateProgramResponse :init)))

(setf (get niryo_robot_programs_manager_v2::UpdateProgramRequest :md5sum-) "eb0c9f7450449983be4acb7cf3218c8e")
(setf (get niryo_robot_programs_manager_v2::UpdateProgramRequest :datatype-) "niryo_robot_programs_manager_v2/UpdateProgramRequest")
(setf (get niryo_robot_programs_manager_v2::UpdateProgramRequest :definition-)
      "string program_id
string name
string description
string python_code
string blockly_code
---
int16 status
string message

")

(setf (get niryo_robot_programs_manager_v2::UpdateProgramResponse :md5sum-) "eb0c9f7450449983be4acb7cf3218c8e")
(setf (get niryo_robot_programs_manager_v2::UpdateProgramResponse :datatype-) "niryo_robot_programs_manager_v2/UpdateProgramResponse")
(setf (get niryo_robot_programs_manager_v2::UpdateProgramResponse :definition-)
      "string program_id
string name
string description
string python_code
string blockly_code
---
int16 status
string message

")



(provide :niryo_robot_programs_manager_v2/UpdateProgram "eb0c9f7450449983be4acb7cf3218c8e")


