;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::BasicObject)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'BasicObject (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::BASICOBJECT")
  (make-package "NIRYO_ROBOT_MSGS::BASICOBJECT"))

(in-package "ROS")
;;//! \htmlinclude BasicObject.msg.html


(defclass niryo_robot_msgs::BasicObject
  :super ros::object
  :slots (_name _description ))

(defmethod niryo_robot_msgs::BasicObject
  (:init
   (&key
    ((:name __name) "")
    ((:description __description) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _description (string __description))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get niryo_robot_msgs::BasicObject :md5sum-) "5a319d5d0d68cf65447a451755dbc01b")
(setf (get niryo_robot_msgs::BasicObject :datatype-) "niryo_robot_msgs/BasicObject")
(setf (get niryo_robot_msgs::BasicObject :definition-)
      "string name
string description
")



(provide :niryo_robot_msgs/BasicObject "5a319d5d0d68cf65447a451755dbc01b")


