;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager_v2::GetProgramList)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
  (shadow 'GetProgramList (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMLIST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMLIST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMLISTREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMLISTREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMLISTRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMLISTRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_programs_manager_v2::GetProgramListRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_programs_manager_v2::GetProgramListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager_v2::GetProgramListResponse
  :super ros::object
  :slots (_status _message _programs ))

(defmethod niryo_robot_programs_manager_v2::GetProgramListResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:programs __programs) ())
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _programs __programs)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:programs
   (&rest __programs)
   (if (keywordp (car __programs))
       (send* _programs __programs)
     (progn
       (if __programs (setq _programs (car __programs)))
       _programs)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; niryo_robot_programs_manager_v2/Program[] _programs
    (apply #'+ (send-all _programs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; niryo_robot_programs_manager_v2/Program[] _programs
     (write-long (length _programs) s)
     (dolist (elem _programs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_robot_programs_manager_v2/Program[] _programs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _programs (let (r) (dotimes (i n) (push (instance niryo_robot_programs_manager_v2::Program :init) r)) r))
     (dolist (elem- _programs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager_v2::GetProgramList
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager_v2::GetProgramList :md5sum-) "b71139d068539b14853901004189dc3a")
(setf (get niryo_robot_programs_manager_v2::GetProgramList :datatype-) "niryo_robot_programs_manager_v2/GetProgramList")
(setf (get niryo_robot_programs_manager_v2::GetProgramList :request) niryo_robot_programs_manager_v2::GetProgramListRequest)
(setf (get niryo_robot_programs_manager_v2::GetProgramList :response) niryo_robot_programs_manager_v2::GetProgramListResponse)

(defmethod niryo_robot_programs_manager_v2::GetProgramListRequest
  (:response () (instance niryo_robot_programs_manager_v2::GetProgramListResponse :init)))

(setf (get niryo_robot_programs_manager_v2::GetProgramListRequest :md5sum-) "b71139d068539b14853901004189dc3a")
(setf (get niryo_robot_programs_manager_v2::GetProgramListRequest :datatype-) "niryo_robot_programs_manager_v2/GetProgramListRequest")
(setf (get niryo_robot_programs_manager_v2::GetProgramListRequest :definition-)
      "---
int32 status
string message
niryo_robot_programs_manager_v2/Program[] programs

================================================================================
MSG: niryo_robot_programs_manager_v2/Program
string program_id
string name
string description
bool has_blockly
string saved_at
string python_code
")

(setf (get niryo_robot_programs_manager_v2::GetProgramListResponse :md5sum-) "b71139d068539b14853901004189dc3a")
(setf (get niryo_robot_programs_manager_v2::GetProgramListResponse :datatype-) "niryo_robot_programs_manager_v2/GetProgramListResponse")
(setf (get niryo_robot_programs_manager_v2::GetProgramListResponse :definition-)
      "---
int32 status
string message
niryo_robot_programs_manager_v2/Program[] programs

================================================================================
MSG: niryo_robot_programs_manager_v2/Program
string program_id
string name
string description
bool has_blockly
string saved_at
string python_code
")



(provide :niryo_robot_programs_manager_v2/GetProgramList "b71139d068539b14853901004189dc3a")


