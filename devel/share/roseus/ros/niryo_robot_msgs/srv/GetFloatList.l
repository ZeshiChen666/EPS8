;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::GetFloatList)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'GetFloatList (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::GETFLOATLIST")
  (make-package "NIRYO_ROBOT_MSGS::GETFLOATLIST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETFLOATLISTREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::GETFLOATLISTREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETFLOATLISTRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::GETFLOATLISTRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::GetFloatListRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_msgs::GetFloatListRequest
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

(defclass niryo_robot_msgs::GetFloatListResponse
  :super ros::object
  :slots (_values _status _message ))

(defmethod niryo_robot_msgs::GetFloatListResponse
  (:init
   (&key
    ((:values __values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _values __values)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float32[] _values
    (* 4    (length _values)) 4
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
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
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
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
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_msgs::GetFloatList
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::GetFloatList :md5sum-) "4451316e97dfda37b6fe1ea8066c7c25")
(setf (get niryo_robot_msgs::GetFloatList :datatype-) "niryo_robot_msgs/GetFloatList")
(setf (get niryo_robot_msgs::GetFloatList :request) niryo_robot_msgs::GetFloatListRequest)
(setf (get niryo_robot_msgs::GetFloatList :response) niryo_robot_msgs::GetFloatListResponse)

(defmethod niryo_robot_msgs::GetFloatListRequest
  (:response () (instance niryo_robot_msgs::GetFloatListResponse :init)))

(setf (get niryo_robot_msgs::GetFloatListRequest :md5sum-) "4451316e97dfda37b6fe1ea8066c7c25")
(setf (get niryo_robot_msgs::GetFloatListRequest :datatype-) "niryo_robot_msgs/GetFloatListRequest")
(setf (get niryo_robot_msgs::GetFloatListRequest :definition-)
      "---
float32[] values
int32 status
string message
")

(setf (get niryo_robot_msgs::GetFloatListResponse :md5sum-) "4451316e97dfda37b6fe1ea8066c7c25")
(setf (get niryo_robot_msgs::GetFloatListResponse :datatype-) "niryo_robot_msgs/GetFloatListResponse")
(setf (get niryo_robot_msgs::GetFloatListResponse :definition-)
      "---
float32[] values
int32 status
string message
")



(provide :niryo_robot_msgs/GetFloatList "4451316e97dfda37b6fe1ea8066c7c25")


