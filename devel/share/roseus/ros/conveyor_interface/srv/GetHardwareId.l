;; Auto-generated. Do not edit!


(when (boundp 'conveyor_interface::GetHardwareId)
  (if (not (find-package "CONVEYOR_INTERFACE"))
    (make-package "CONVEYOR_INTERFACE"))
  (shadow 'GetHardwareId (find-package "CONVEYOR_INTERFACE")))
(unless (find-package "CONVEYOR_INTERFACE::GETHARDWAREID")
  (make-package "CONVEYOR_INTERFACE::GETHARDWAREID"))
(unless (find-package "CONVEYOR_INTERFACE::GETHARDWAREIDREQUEST")
  (make-package "CONVEYOR_INTERFACE::GETHARDWAREIDREQUEST"))
(unless (find-package "CONVEYOR_INTERFACE::GETHARDWAREIDRESPONSE")
  (make-package "CONVEYOR_INTERFACE::GETHARDWAREIDRESPONSE"))

(in-package "ROS")





(defclass conveyor_interface::GetHardwareIdRequest
  :super ros::object
  :slots (_id ))

(defmethod conveyor_interface::GetHardwareIdRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass conveyor_interface::GetHardwareIdResponse
  :super ros::object
  :slots (_status _message _hardware_id ))

(defmethod conveyor_interface::GetHardwareIdResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:hardware_id __hardware_id) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _hardware_id (string __hardware_id))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:hardware_id
   (&optional __hardware_id)
   (if __hardware_id (setq _hardware_id __hardware_id)) _hardware_id)
  (:serialization-length
   ()
   (+
    ;; int16 _status
    2
    ;; string _message
    4 (length _message)
    ;; string _hardware_id
    4 (length _hardware_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _status
       (write-word _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _hardware_id
       (write-long (length _hardware_id) s) (princ _hardware_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _hardware_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass conveyor_interface::GetHardwareId
  :super ros::object
  :slots ())

(setf (get conveyor_interface::GetHardwareId :md5sum-) "6f74e67adad9d39e5f460edd6826c1f4")
(setf (get conveyor_interface::GetHardwareId :datatype-) "conveyor_interface/GetHardwareId")
(setf (get conveyor_interface::GetHardwareId :request) conveyor_interface::GetHardwareIdRequest)
(setf (get conveyor_interface::GetHardwareId :response) conveyor_interface::GetHardwareIdResponse)

(defmethod conveyor_interface::GetHardwareIdRequest
  (:response () (instance conveyor_interface::GetHardwareIdResponse :init)))

(setf (get conveyor_interface::GetHardwareIdRequest :md5sum-) "6f74e67adad9d39e5f460edd6826c1f4")
(setf (get conveyor_interface::GetHardwareIdRequest :datatype-) "conveyor_interface/GetHardwareIdRequest")
(setf (get conveyor_interface::GetHardwareIdRequest :definition-)
      "uint8 id
---
int16 status
string message
string hardware_id

")

(setf (get conveyor_interface::GetHardwareIdResponse :md5sum-) "6f74e67adad9d39e5f460edd6826c1f4")
(setf (get conveyor_interface::GetHardwareIdResponse :datatype-) "conveyor_interface/GetHardwareIdResponse")
(setf (get conveyor_interface::GetHardwareIdResponse :definition-)
      "uint8 id
---
int16 status
string message
string hardware_id

")



(provide :conveyor_interface/GetHardwareId "6f74e67adad9d39e5f460edd6826c1f4")


