;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_vision::DebugMarkers)
  (if (not (find-package "NIRYO_ROBOT_VISION"))
    (make-package "NIRYO_ROBOT_VISION"))
  (shadow 'DebugMarkers (find-package "NIRYO_ROBOT_VISION")))
(unless (find-package "NIRYO_ROBOT_VISION::DEBUGMARKERS")
  (make-package "NIRYO_ROBOT_VISION::DEBUGMARKERS"))
(unless (find-package "NIRYO_ROBOT_VISION::DEBUGMARKERSREQUEST")
  (make-package "NIRYO_ROBOT_VISION::DEBUGMARKERSREQUEST"))
(unless (find-package "NIRYO_ROBOT_VISION::DEBUGMARKERSRESPONSE")
  (make-package "NIRYO_ROBOT_VISION::DEBUGMARKERSRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass niryo_robot_vision::DebugMarkersRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_vision::DebugMarkersRequest
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

(defclass niryo_robot_vision::DebugMarkersResponse
  :super ros::object
  :slots (_status _message _markers_detected _img ))

(defmethod niryo_robot_vision::DebugMarkersResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:markers_detected __markers_detected) nil)
    ((:img __img) (instance sensor_msgs::CompressedImage :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _markers_detected __markers_detected)
   (setq _img __img)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:markers_detected
   (&optional (__markers_detected :null))
   (if (not (eq __markers_detected :null)) (setq _markers_detected __markers_detected)) _markers_detected)
  (:img
   (&rest __img)
   (if (keywordp (car __img))
       (send* _img __img)
     (progn
       (if __img (setq _img (car __img)))
       _img)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; bool _markers_detected
    1
    ;; sensor_msgs/CompressedImage _img
    (send _img :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _markers_detected
       (if _markers_detected (write-byte -1 s) (write-byte 0 s))
     ;; sensor_msgs/CompressedImage _img
       (send _img :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _markers_detected
     (setq _markers_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; sensor_msgs/CompressedImage _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_vision::DebugMarkers
  :super ros::object
  :slots ())

(setf (get niryo_robot_vision::DebugMarkers :md5sum-) "d2753e4a373a5de967bd44a991324d2f")
(setf (get niryo_robot_vision::DebugMarkers :datatype-) "niryo_robot_vision/DebugMarkers")
(setf (get niryo_robot_vision::DebugMarkers :request) niryo_robot_vision::DebugMarkersRequest)
(setf (get niryo_robot_vision::DebugMarkers :response) niryo_robot_vision::DebugMarkersResponse)

(defmethod niryo_robot_vision::DebugMarkersRequest
  (:response () (instance niryo_robot_vision::DebugMarkersResponse :init)))

(setf (get niryo_robot_vision::DebugMarkersRequest :md5sum-) "d2753e4a373a5de967bd44a991324d2f")
(setf (get niryo_robot_vision::DebugMarkersRequest :datatype-) "niryo_robot_vision/DebugMarkersRequest")
(setf (get niryo_robot_vision::DebugMarkersRequest :definition-)
      "---
int32 status
string message
bool markers_detected
sensor_msgs/CompressedImage img


================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get niryo_robot_vision::DebugMarkersResponse :md5sum-) "d2753e4a373a5de967bd44a991324d2f")
(setf (get niryo_robot_vision::DebugMarkersResponse :datatype-) "niryo_robot_vision/DebugMarkersResponse")
(setf (get niryo_robot_vision::DebugMarkersResponse :definition-)
      "---
int32 status
string message
bool markers_detected
sensor_msgs/CompressedImage img


================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :niryo_robot_vision/DebugMarkers "d2753e4a373a5de967bd44a991324d2f")


