;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_vision::ActivateDebugTopics)
  (if (not (find-package "NIRYO_ROBOT_VISION"))
    (make-package "NIRYO_ROBOT_VISION"))
  (shadow 'ActivateDebugTopics (find-package "NIRYO_ROBOT_VISION")))
(unless (find-package "NIRYO_ROBOT_VISION::ACTIVATEDEBUGTOPICS")
  (make-package "NIRYO_ROBOT_VISION::ACTIVATEDEBUGTOPICS"))
(unless (find-package "NIRYO_ROBOT_VISION::ACTIVATEDEBUGTOPICSREQUEST")
  (make-package "NIRYO_ROBOT_VISION::ACTIVATEDEBUGTOPICSREQUEST"))
(unless (find-package "NIRYO_ROBOT_VISION::ACTIVATEDEBUGTOPICSRESPONSE")
  (make-package "NIRYO_ROBOT_VISION::ACTIVATEDEBUGTOPICSRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_vision::ActivateDebugTopicsRequest
  :super ros::object
  :slots (_topics ))

(defmethod niryo_robot_vision::ActivateDebugTopicsRequest
  (:init
   (&key
    ((:topics __topics) (instance niryo_robot_vision::ActiveDebugTopics :init))
    )
   (send-super :init)
   (setq _topics __topics)
   self)
  (:topics
   (&rest __topics)
   (if (keywordp (car __topics))
       (send* _topics __topics)
     (progn
       (if __topics (setq _topics (car __topics)))
       _topics)))
  (:serialization-length
   ()
   (+
    ;; niryo_robot_vision/ActiveDebugTopics _topics
    (send _topics :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_vision/ActiveDebugTopics _topics
       (send _topics :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_vision/ActiveDebugTopics _topics
     (send _topics :deserialize buf ptr-) (incf ptr- (send _topics :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_vision::ActivateDebugTopicsResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_vision::ActivateDebugTopicsResponse
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

(defclass niryo_robot_vision::ActivateDebugTopics
  :super ros::object
  :slots ())

(setf (get niryo_robot_vision::ActivateDebugTopics :md5sum-) "c0c5123a51741d038cae1b93404df52b")
(setf (get niryo_robot_vision::ActivateDebugTopics :datatype-) "niryo_robot_vision/ActivateDebugTopics")
(setf (get niryo_robot_vision::ActivateDebugTopics :request) niryo_robot_vision::ActivateDebugTopicsRequest)
(setf (get niryo_robot_vision::ActivateDebugTopics :response) niryo_robot_vision::ActivateDebugTopicsResponse)

(defmethod niryo_robot_vision::ActivateDebugTopicsRequest
  (:response () (instance niryo_robot_vision::ActivateDebugTopicsResponse :init)))

(setf (get niryo_robot_vision::ActivateDebugTopicsRequest :md5sum-) "c0c5123a51741d038cae1b93404df52b")
(setf (get niryo_robot_vision::ActivateDebugTopicsRequest :datatype-) "niryo_robot_vision/ActivateDebugTopicsRequest")
(setf (get niryo_robot_vision::ActivateDebugTopicsRequest :definition-)
      "niryo_robot_vision/ActiveDebugTopics topics

================================================================================
MSG: niryo_robot_vision/ActiveDebugTopics
bool red_channel
bool green_channel
bool blue_channel
bool any_channel
---
int32 status
string message
")

(setf (get niryo_robot_vision::ActivateDebugTopicsResponse :md5sum-) "c0c5123a51741d038cae1b93404df52b")
(setf (get niryo_robot_vision::ActivateDebugTopicsResponse :datatype-) "niryo_robot_vision/ActivateDebugTopicsResponse")
(setf (get niryo_robot_vision::ActivateDebugTopicsResponse :definition-)
      "niryo_robot_vision/ActiveDebugTopics topics

================================================================================
MSG: niryo_robot_vision/ActiveDebugTopics
bool red_channel
bool green_channel
bool blue_channel
bool any_channel
---
int32 status
string message
")



(provide :niryo_robot_vision/ActivateDebugTopics "c0c5123a51741d038cae1b93404df52b")


