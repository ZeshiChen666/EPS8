;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager_v2::GetProgramAutorunInfos)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
  (shadow 'GetProgramAutorunInfos (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOS")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOS"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOSREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOSREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOSRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOSRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_programs_manager_v2::GetProgramAutorunInfosRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_programs_manager_v2::GetProgramAutorunInfosRequest
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

(intern "*DISABLE*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOSRESPONSE"))
(shadow '*DISABLE* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOSRESPONSE"))
(defconstant niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse::*DISABLE* 0)
(intern "*ONE_SHOT*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOSRESPONSE"))
(shadow '*ONE_SHOT* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOSRESPONSE"))
(defconstant niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse::*ONE_SHOT* 1)
(intern "*LOOP*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOSRESPONSE"))
(shadow '*LOOP* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::GETPROGRAMAUTORUNINFOSRESPONSE"))
(defconstant niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse::*LOOP* 2)

(defun niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse-to-symbol (const)
  (cond
        ((= const 0) 'niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse::*DISABLE*)
        ((= const 1) 'niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse::*ONE_SHOT*)
        ((= const 2) 'niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse::*LOOP*)
        (t nil)))

(defclass niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse
  :super ros::object
  :slots (_status _message _program_id _mode ))

(defmethod niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:program_id __program_id) "")
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _program_id (string __program_id))
   (setq _mode (round __mode))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:program_id
   (&optional __program_id)
   (if __program_id (setq _program_id __program_id)) _program_id)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; string _program_id
    4 (length _program_id)
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _program_id
       (write-long (length _program_id) s) (princ _program_id s)
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _program_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _program_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager_v2::GetProgramAutorunInfos
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager_v2::GetProgramAutorunInfos :md5sum-) "e8981d6a455c23b2e3b12e77054c6e8d")
(setf (get niryo_robot_programs_manager_v2::GetProgramAutorunInfos :datatype-) "niryo_robot_programs_manager_v2/GetProgramAutorunInfos")
(setf (get niryo_robot_programs_manager_v2::GetProgramAutorunInfos :request) niryo_robot_programs_manager_v2::GetProgramAutorunInfosRequest)
(setf (get niryo_robot_programs_manager_v2::GetProgramAutorunInfos :response) niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse)

(defmethod niryo_robot_programs_manager_v2::GetProgramAutorunInfosRequest
  (:response () (instance niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse :init)))

(setf (get niryo_robot_programs_manager_v2::GetProgramAutorunInfosRequest :md5sum-) "e8981d6a455c23b2e3b12e77054c6e8d")
(setf (get niryo_robot_programs_manager_v2::GetProgramAutorunInfosRequest :datatype-) "niryo_robot_programs_manager_v2/GetProgramAutorunInfosRequest")
(setf (get niryo_robot_programs_manager_v2::GetProgramAutorunInfosRequest :definition-)
      "---
int32 status
string message

string program_id

# Mode
int8 DISABLE = 0
int8 ONE_SHOT = 1
int8 LOOP = 2

int8 mode

")

(setf (get niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse :md5sum-) "e8981d6a455c23b2e3b12e77054c6e8d")
(setf (get niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse :datatype-) "niryo_robot_programs_manager_v2/GetProgramAutorunInfosResponse")
(setf (get niryo_robot_programs_manager_v2::GetProgramAutorunInfosResponse :definition-)
      "---
int32 status
string message

string program_id

# Mode
int8 DISABLE = 0
int8 ONE_SHOT = 1
int8 LOOP = 2

int8 mode

")



(provide :niryo_robot_programs_manager_v2/GetProgramAutorunInfos "e8981d6a455c23b2e3b12e77054c6e8d")


