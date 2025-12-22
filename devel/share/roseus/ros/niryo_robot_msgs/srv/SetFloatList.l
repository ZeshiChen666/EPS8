;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::SetFloatList)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'SetFloatList (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::SETFLOATLIST")
  (make-package "NIRYO_ROBOT_MSGS::SETFLOATLIST"))
(unless (find-package "NIRYO_ROBOT_MSGS::SETFLOATLISTREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::SETFLOATLISTREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::SETFLOATLISTRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::SETFLOATLISTRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::SetFloatListRequest
  :super ros::object
  :slots (_values ))

(defmethod niryo_robot_msgs::SetFloatListRequest
  (:init
   (&key
    ((:values __values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _values __values)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; float32[] _values
    (* 4    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass niryo_robot_msgs::SetFloatListResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_msgs::SetFloatListResponse
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

(defclass niryo_robot_msgs::SetFloatList
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::SetFloatList :md5sum-) "aad4aec377eeec0ea90e866c6d677783")
(setf (get niryo_robot_msgs::SetFloatList :datatype-) "niryo_robot_msgs/SetFloatList")
(setf (get niryo_robot_msgs::SetFloatList :request) niryo_robot_msgs::SetFloatListRequest)
(setf (get niryo_robot_msgs::SetFloatList :response) niryo_robot_msgs::SetFloatListResponse)

(defmethod niryo_robot_msgs::SetFloatListRequest
  (:response () (instance niryo_robot_msgs::SetFloatListResponse :init)))

(setf (get niryo_robot_msgs::SetFloatListRequest :md5sum-) "aad4aec377eeec0ea90e866c6d677783")
(setf (get niryo_robot_msgs::SetFloatListRequest :datatype-) "niryo_robot_msgs/SetFloatListRequest")
(setf (get niryo_robot_msgs::SetFloatListRequest :definition-)
      "float32[] values
---
int32 status
string message
")

(setf (get niryo_robot_msgs::SetFloatListResponse :md5sum-) "aad4aec377eeec0ea90e866c6d677783")
(setf (get niryo_robot_msgs::SetFloatListResponse :datatype-) "niryo_robot_msgs/SetFloatListResponse")
(setf (get niryo_robot_msgs::SetFloatListResponse :definition-)
      "float32[] values
---
int32 status
string message
")



(provide :niryo_robot_msgs/SetFloatList "aad4aec377eeec0ea90e866c6d677783")


