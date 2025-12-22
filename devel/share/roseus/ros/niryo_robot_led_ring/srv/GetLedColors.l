;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_led_ring::GetLedColors)
  (if (not (find-package "NIRYO_ROBOT_LED_RING"))
    (make-package "NIRYO_ROBOT_LED_RING"))
  (shadow 'GetLedColors (find-package "NIRYO_ROBOT_LED_RING")))
(unless (find-package "NIRYO_ROBOT_LED_RING::GETLEDCOLORS")
  (make-package "NIRYO_ROBOT_LED_RING::GETLEDCOLORS"))
(unless (find-package "NIRYO_ROBOT_LED_RING::GETLEDCOLORSREQUEST")
  (make-package "NIRYO_ROBOT_LED_RING::GETLEDCOLORSREQUEST"))
(unless (find-package "NIRYO_ROBOT_LED_RING::GETLEDCOLORSRESPONSE")
  (make-package "NIRYO_ROBOT_LED_RING::GETLEDCOLORSRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass niryo_robot_led_ring::GetLedColorsRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_led_ring::GetLedColorsRequest
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

(defclass niryo_robot_led_ring::GetLedColorsResponse
  :super ros::object
  :slots (_led_ring_colors _status _message ))

(defmethod niryo_robot_led_ring::GetLedColorsResponse
  (:init
   (&key
    ((:led_ring_colors __led_ring_colors) ())
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _led_ring_colors __led_ring_colors)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:led_ring_colors
   (&rest __led_ring_colors)
   (if (keywordp (car __led_ring_colors))
       (send* _led_ring_colors __led_ring_colors)
     (progn
       (if __led_ring_colors (setq _led_ring_colors (car __led_ring_colors)))
       _led_ring_colors)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; std_msgs/ColorRGBA[] _led_ring_colors
    (apply #'+ (send-all _led_ring_colors :serialization-length)) 4
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA[] _led_ring_colors
     (write-long (length _led_ring_colors) s)
     (dolist (elem _led_ring_colors)
       (send elem :serialize s)
       )
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA[] _led_ring_colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _led_ring_colors (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _led_ring_colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_led_ring::GetLedColors
  :super ros::object
  :slots ())

(setf (get niryo_robot_led_ring::GetLedColors :md5sum-) "a00eb631a727c358bd52d7c6213b37a5")
(setf (get niryo_robot_led_ring::GetLedColors :datatype-) "niryo_robot_led_ring/GetLedColors")
(setf (get niryo_robot_led_ring::GetLedColors :request) niryo_robot_led_ring::GetLedColorsRequest)
(setf (get niryo_robot_led_ring::GetLedColors :response) niryo_robot_led_ring::GetLedColorsResponse)

(defmethod niryo_robot_led_ring::GetLedColorsRequest
  (:response () (instance niryo_robot_led_ring::GetLedColorsResponse :init)))

(setf (get niryo_robot_led_ring::GetLedColorsRequest :md5sum-) "a00eb631a727c358bd52d7c6213b37a5")
(setf (get niryo_robot_led_ring::GetLedColorsRequest :datatype-) "niryo_robot_led_ring/GetLedColorsRequest")
(setf (get niryo_robot_led_ring::GetLedColorsRequest :definition-)
      "---
std_msgs/ColorRGBA[] led_ring_colors
int32 status
string message

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
")

(setf (get niryo_robot_led_ring::GetLedColorsResponse :md5sum-) "a00eb631a727c358bd52d7c6213b37a5")
(setf (get niryo_robot_led_ring::GetLedColorsResponse :datatype-) "niryo_robot_led_ring/GetLedColorsResponse")
(setf (get niryo_robot_led_ring::GetLedColorsResponse :definition-)
      "---
std_msgs/ColorRGBA[] led_ring_colors
int32 status
string message

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
")



(provide :niryo_robot_led_ring/GetLedColors "a00eb631a727c358bd52d7c6213b37a5")


