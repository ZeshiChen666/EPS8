;; Auto-generated. Do not edit!


(when (boundp 'joints_interface::FactoryCalibration)
  (if (not (find-package "JOINTS_INTERFACE"))
    (make-package "JOINTS_INTERFACE"))
  (shadow 'FactoryCalibration (find-package "JOINTS_INTERFACE")))
(unless (find-package "JOINTS_INTERFACE::FACTORYCALIBRATION")
  (make-package "JOINTS_INTERFACE::FACTORYCALIBRATION"))
(unless (find-package "JOINTS_INTERFACE::FACTORYCALIBRATIONREQUEST")
  (make-package "JOINTS_INTERFACE::FACTORYCALIBRATIONREQUEST"))
(unless (find-package "JOINTS_INTERFACE::FACTORYCALIBRATIONRESPONSE")
  (make-package "JOINTS_INTERFACE::FACTORYCALIBRATIONRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "JOINTS_INTERFACE::FACTORYCALIBRATIONREQUEST"))
(shadow '*START* (find-package "JOINTS_INTERFACE::FACTORYCALIBRATIONREQUEST"))
(defconstant joints_interface::FactoryCalibrationRequest::*START* 2)
(intern "*STOP*" (find-package "JOINTS_INTERFACE::FACTORYCALIBRATIONREQUEST"))
(shadow '*STOP* (find-package "JOINTS_INTERFACE::FACTORYCALIBRATIONREQUEST"))
(defconstant joints_interface::FactoryCalibrationRequest::*STOP* 4)

(defun joints_interface::FactoryCalibrationRequest-to-symbol (const)
  (cond
        ((= const 2) 'joints_interface::FactoryCalibrationRequest::*START*)
        ((= const 4) 'joints_interface::FactoryCalibrationRequest::*STOP*)
        (t nil)))

(defclass joints_interface::FactoryCalibrationRequest
  :super ros::object
  :slots (_command _ids ))

(defmethod joints_interface::FactoryCalibrationRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _ids __ids)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; uint8[] _ids
    (* 1    (length _ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; uint8[] _ids
     (write-long (length _ids) s)
     (princ _ids s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _ids
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _ids (make-array n :element-type :char))
     (replace _ids buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass joints_interface::FactoryCalibrationResponse
  :super ros::object
  :slots (_status _message ))

(defmethod joints_interface::FactoryCalibrationResponse
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

(defclass joints_interface::FactoryCalibration
  :super ros::object
  :slots ())

(setf (get joints_interface::FactoryCalibration :md5sum-) "951ab019c818641e90bb017371ecef02")
(setf (get joints_interface::FactoryCalibration :datatype-) "joints_interface/FactoryCalibration")
(setf (get joints_interface::FactoryCalibration :request) joints_interface::FactoryCalibrationRequest)
(setf (get joints_interface::FactoryCalibration :response) joints_interface::FactoryCalibrationResponse)

(defmethod joints_interface::FactoryCalibrationRequest
  (:response () (instance joints_interface::FactoryCalibrationResponse :init)))

(setf (get joints_interface::FactoryCalibrationRequest :md5sum-) "951ab019c818641e90bb017371ecef02")
(setf (get joints_interface::FactoryCalibrationRequest :datatype-) "joints_interface/FactoryCalibrationRequest")
(setf (get joints_interface::FactoryCalibrationRequest :definition-)
      "int8 START=2
int8 STOP=4


uint8 command 
uint8[] ids 
---
int32 status
string message

")

(setf (get joints_interface::FactoryCalibrationResponse :md5sum-) "951ab019c818641e90bb017371ecef02")
(setf (get joints_interface::FactoryCalibrationResponse :datatype-) "joints_interface/FactoryCalibrationResponse")
(setf (get joints_interface::FactoryCalibrationResponse :definition-)
      "int8 START=2
int8 STOP=4


uint8 command 
uint8[] ids 
---
int32 status
string message

")



(provide :joints_interface/FactoryCalibration "951ab019c818641e90bb017371ecef02")


