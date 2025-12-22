;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_vision::ActiveDebugTopics)
  (if (not (find-package "NIRYO_ROBOT_VISION"))
    (make-package "NIRYO_ROBOT_VISION"))
  (shadow 'ActiveDebugTopics (find-package "NIRYO_ROBOT_VISION")))
(unless (find-package "NIRYO_ROBOT_VISION::ACTIVEDEBUGTOPICS")
  (make-package "NIRYO_ROBOT_VISION::ACTIVEDEBUGTOPICS"))

(in-package "ROS")
;;//! \htmlinclude ActiveDebugTopics.msg.html


(defclass niryo_robot_vision::ActiveDebugTopics
  :super ros::object
  :slots (_red_channel _green_channel _blue_channel _any_channel _markers ))

(defmethod niryo_robot_vision::ActiveDebugTopics
  (:init
   (&key
    ((:red_channel __red_channel) nil)
    ((:green_channel __green_channel) nil)
    ((:blue_channel __blue_channel) nil)
    ((:any_channel __any_channel) nil)
    ((:markers __markers) nil)
    )
   (send-super :init)
   (setq _red_channel __red_channel)
   (setq _green_channel __green_channel)
   (setq _blue_channel __blue_channel)
   (setq _any_channel __any_channel)
   (setq _markers __markers)
   self)
  (:red_channel
   (&optional (__red_channel :null))
   (if (not (eq __red_channel :null)) (setq _red_channel __red_channel)) _red_channel)
  (:green_channel
   (&optional (__green_channel :null))
   (if (not (eq __green_channel :null)) (setq _green_channel __green_channel)) _green_channel)
  (:blue_channel
   (&optional (__blue_channel :null))
   (if (not (eq __blue_channel :null)) (setq _blue_channel __blue_channel)) _blue_channel)
  (:any_channel
   (&optional (__any_channel :null))
   (if (not (eq __any_channel :null)) (setq _any_channel __any_channel)) _any_channel)
  (:markers
   (&optional (__markers :null))
   (if (not (eq __markers :null)) (setq _markers __markers)) _markers)
  (:serialization-length
   ()
   (+
    ;; bool _red_channel
    1
    ;; bool _green_channel
    1
    ;; bool _blue_channel
    1
    ;; bool _any_channel
    1
    ;; bool _markers
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _red_channel
       (if _red_channel (write-byte -1 s) (write-byte 0 s))
     ;; bool _green_channel
       (if _green_channel (write-byte -1 s) (write-byte 0 s))
     ;; bool _blue_channel
       (if _blue_channel (write-byte -1 s) (write-byte 0 s))
     ;; bool _any_channel
       (if _any_channel (write-byte -1 s) (write-byte 0 s))
     ;; bool _markers
       (if _markers (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _red_channel
     (setq _red_channel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _green_channel
     (setq _green_channel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _blue_channel
     (setq _blue_channel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _any_channel
     (setq _any_channel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _markers
     (setq _markers (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get niryo_robot_vision::ActiveDebugTopics :md5sum-) "10965b7aa16fcc09509da71fe3d98caa")
(setf (get niryo_robot_vision::ActiveDebugTopics :datatype-) "niryo_robot_vision/ActiveDebugTopics")
(setf (get niryo_robot_vision::ActiveDebugTopics :definition-)
      "bool red_channel
bool green_channel
bool blue_channel
bool any_channel
bool markers
")



(provide :niryo_robot_vision/ActiveDebugTopics "10965b7aa16fcc09509da71fe3d98caa")


