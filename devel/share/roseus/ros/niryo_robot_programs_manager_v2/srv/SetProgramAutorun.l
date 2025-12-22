;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager_v2::SetProgramAutorun)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
  (shadow 'SetProgramAutorun (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUN")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUN"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUNREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUNREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUNRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUNRESPONSE"))

(in-package "ROS")





(intern "*DISABLE*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUNREQUEST"))
(shadow '*DISABLE* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUNREQUEST"))
(defconstant niryo_robot_programs_manager_v2::SetProgramAutorunRequest::*DISABLE* 0)
(intern "*ONE_SHOT*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUNREQUEST"))
(shadow '*ONE_SHOT* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUNREQUEST"))
(defconstant niryo_robot_programs_manager_v2::SetProgramAutorunRequest::*ONE_SHOT* 1)
(intern "*LOOP*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUNREQUEST"))
(shadow '*LOOP* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::SETPROGRAMAUTORUNREQUEST"))
(defconstant niryo_robot_programs_manager_v2::SetProgramAutorunRequest::*LOOP* 2)

(defun niryo_robot_programs_manager_v2::SetProgramAutorunRequest-to-symbol (const)
  (cond
        ((= const 0) 'niryo_robot_programs_manager_v2::SetProgramAutorunRequest::*DISABLE*)
        ((= const 1) 'niryo_robot_programs_manager_v2::SetProgramAutorunRequest::*ONE_SHOT*)
        ((= const 2) 'niryo_robot_programs_manager_v2::SetProgramAutorunRequest::*LOOP*)
        (t nil)))

(defclass niryo_robot_programs_manager_v2::SetProgramAutorunRequest
  :super ros::object
  :slots (_program_id _mode ))

(defmethod niryo_robot_programs_manager_v2::SetProgramAutorunRequest
  (:init
   (&key
    ((:program_id __program_id) "")
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _program_id (string __program_id))
   (setq _mode (round __mode))
   self)
  (:program_id
   (&optional __program_id)
   (if __program_id (setq _program_id __program_id)) _program_id)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _program_id
    4 (length _program_id)
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _program_id
       (write-long (length _program_id) s) (princ _program_id s)
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _program_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _program_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager_v2::SetProgramAutorunResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_programs_manager_v2::SetProgramAutorunResponse
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

(defclass niryo_robot_programs_manager_v2::SetProgramAutorun
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager_v2::SetProgramAutorun :md5sum-) "bf5e2880d3da99b3a480c54d6ac54425")
(setf (get niryo_robot_programs_manager_v2::SetProgramAutorun :datatype-) "niryo_robot_programs_manager_v2/SetProgramAutorun")
(setf (get niryo_robot_programs_manager_v2::SetProgramAutorun :request) niryo_robot_programs_manager_v2::SetProgramAutorunRequest)
(setf (get niryo_robot_programs_manager_v2::SetProgramAutorun :response) niryo_robot_programs_manager_v2::SetProgramAutorunResponse)

(defmethod niryo_robot_programs_manager_v2::SetProgramAutorunRequest
  (:response () (instance niryo_robot_programs_manager_v2::SetProgramAutorunResponse :init)))

(setf (get niryo_robot_programs_manager_v2::SetProgramAutorunRequest :md5sum-) "bf5e2880d3da99b3a480c54d6ac54425")
(setf (get niryo_robot_programs_manager_v2::SetProgramAutorunRequest :datatype-) "niryo_robot_programs_manager_v2/SetProgramAutorunRequest")
(setf (get niryo_robot_programs_manager_v2::SetProgramAutorunRequest :definition-)
      "# Program id
string program_id

# Mode
int8 DISABLE = 0
int8 ONE_SHOT = 1
int8 LOOP = 2

int8 mode

---
int16 status
string message

")

(setf (get niryo_robot_programs_manager_v2::SetProgramAutorunResponse :md5sum-) "bf5e2880d3da99b3a480c54d6ac54425")
(setf (get niryo_robot_programs_manager_v2::SetProgramAutorunResponse :datatype-) "niryo_robot_programs_manager_v2/SetProgramAutorunResponse")
(setf (get niryo_robot_programs_manager_v2::SetProgramAutorunResponse :definition-)
      "# Program id
string program_id

# Mode
int8 DISABLE = 0
int8 ONE_SHOT = 1
int8 LOOP = 2

int8 mode

---
int16 status
string message

")



(provide :niryo_robot_programs_manager_v2/SetProgramAutorun "bf5e2880d3da99b3a480c54d6ac54425")


