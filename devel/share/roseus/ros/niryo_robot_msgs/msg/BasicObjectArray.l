;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::BasicObjectArray)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'BasicObjectArray (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::BASICOBJECTARRAY")
  (make-package "NIRYO_ROBOT_MSGS::BASICOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude BasicObjectArray.msg.html


(defclass niryo_robot_msgs::BasicObjectArray
  :super ros::object
  :slots (_objects ))

(defmethod niryo_robot_msgs::BasicObjectArray
  (:init
   (&key
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _objects __objects)
   self)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; niryo_robot_msgs/BasicObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_msgs/BasicObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_msgs/BasicObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance niryo_robot_msgs::BasicObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get niryo_robot_msgs::BasicObjectArray :md5sum-) "cfe0a8412a62b82237847c2cddde7923")
(setf (get niryo_robot_msgs::BasicObjectArray :datatype-) "niryo_robot_msgs/BasicObjectArray")
(setf (get niryo_robot_msgs::BasicObjectArray :definition-)
      "niryo_robot_msgs/BasicObject[] objects
================================================================================
MSG: niryo_robot_msgs/BasicObject
string name
string description
")



(provide :niryo_robot_msgs/BasicObjectArray "cfe0a8412a62b82237847c2cddde7923")


