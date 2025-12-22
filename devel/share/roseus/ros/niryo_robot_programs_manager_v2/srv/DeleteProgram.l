;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager_v2::DeleteProgram)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
  (shadow 'DeleteProgram (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::DELETEPROGRAM")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::DELETEPROGRAM"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::DELETEPROGRAMREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::DELETEPROGRAMREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::DELETEPROGRAMRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::DELETEPROGRAMRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_programs_manager_v2::DeleteProgramRequest
  :super ros::object
  :slots (_program_id ))

(defmethod niryo_robot_programs_manager_v2::DeleteProgramRequest
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

(defclass niryo_robot_programs_manager_v2::DeleteProgramResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_programs_manager_v2::DeleteProgramResponse
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

(defclass niryo_robot_programs_manager_v2::DeleteProgram
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager_v2::DeleteProgram :md5sum-) "501c46b3f9338389dd9ce4d07338320f")
(setf (get niryo_robot_programs_manager_v2::DeleteProgram :datatype-) "niryo_robot_programs_manager_v2/DeleteProgram")
(setf (get niryo_robot_programs_manager_v2::DeleteProgram :request) niryo_robot_programs_manager_v2::DeleteProgramRequest)
(setf (get niryo_robot_programs_manager_v2::DeleteProgram :response) niryo_robot_programs_manager_v2::DeleteProgramResponse)

(defmethod niryo_robot_programs_manager_v2::DeleteProgramRequest
  (:response () (instance niryo_robot_programs_manager_v2::DeleteProgramResponse :init)))

(setf (get niryo_robot_programs_manager_v2::DeleteProgramRequest :md5sum-) "501c46b3f9338389dd9ce4d07338320f")
(setf (get niryo_robot_programs_manager_v2::DeleteProgramRequest :datatype-) "niryo_robot_programs_manager_v2/DeleteProgramRequest")
(setf (get niryo_robot_programs_manager_v2::DeleteProgramRequest :definition-)
      "string program_id
---
int16 status
string message

")

(setf (get niryo_robot_programs_manager_v2::DeleteProgramResponse :md5sum-) "501c46b3f9338389dd9ce4d07338320f")
(setf (get niryo_robot_programs_manager_v2::DeleteProgramResponse :datatype-) "niryo_robot_programs_manager_v2/DeleteProgramResponse")
(setf (get niryo_robot_programs_manager_v2::DeleteProgramResponse :definition-)
      "string program_id
---
int16 status
string message

")



(provide :niryo_robot_programs_manager_v2/DeleteProgram "501c46b3f9338389dd9ce4d07338320f")


