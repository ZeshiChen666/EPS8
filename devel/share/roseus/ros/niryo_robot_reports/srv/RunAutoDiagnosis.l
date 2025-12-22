;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_reports::RunAutoDiagnosis)
  (if (not (find-package "NIRYO_ROBOT_REPORTS"))
    (make-package "NIRYO_ROBOT_REPORTS"))
  (shadow 'RunAutoDiagnosis (find-package "NIRYO_ROBOT_REPORTS")))
(unless (find-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSIS")
  (make-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSIS"))
(unless (find-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSISREQUEST")
  (make-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSISREQUEST"))
(unless (find-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSISRESPONSE")
  (make-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSISRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_reports::RunAutoDiagnosisRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_reports::RunAutoDiagnosisRequest
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

(defclass niryo_robot_reports::RunAutoDiagnosisResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_reports::RunAutoDiagnosisResponse
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
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_reports::RunAutoDiagnosis
  :super ros::object
  :slots ())

(setf (get niryo_robot_reports::RunAutoDiagnosis :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get niryo_robot_reports::RunAutoDiagnosis :datatype-) "niryo_robot_reports/RunAutoDiagnosis")
(setf (get niryo_robot_reports::RunAutoDiagnosis :request) niryo_robot_reports::RunAutoDiagnosisRequest)
(setf (get niryo_robot_reports::RunAutoDiagnosis :response) niryo_robot_reports::RunAutoDiagnosisResponse)

(defmethod niryo_robot_reports::RunAutoDiagnosisRequest
  (:response () (instance niryo_robot_reports::RunAutoDiagnosisResponse :init)))

(setf (get niryo_robot_reports::RunAutoDiagnosisRequest :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get niryo_robot_reports::RunAutoDiagnosisRequest :datatype-) "niryo_robot_reports/RunAutoDiagnosisRequest")
(setf (get niryo_robot_reports::RunAutoDiagnosisRequest :definition-)
      "---
int32 status
string message

")

(setf (get niryo_robot_reports::RunAutoDiagnosisResponse :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get niryo_robot_reports::RunAutoDiagnosisResponse :datatype-) "niryo_robot_reports/RunAutoDiagnosisResponse")
(setf (get niryo_robot_reports::RunAutoDiagnosisResponse :definition-)
      "---
int32 status
string message

")



(provide :niryo_robot_reports/RunAutoDiagnosis "2c1d00fb8b4e78420f43d93d5292a429")


