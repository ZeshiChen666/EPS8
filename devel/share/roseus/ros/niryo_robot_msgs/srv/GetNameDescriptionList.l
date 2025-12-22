;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::GetNameDescriptionList)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'GetNameDescriptionList (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLIST")
  (make-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLIST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLISTREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLISTREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLISTRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLISTRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::GetNameDescriptionListRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_msgs::GetNameDescriptionListRequest
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

(defclass niryo_robot_msgs::GetNameDescriptionListResponse
  :super ros::object
  :slots (_status _message _name_list _description_list _objects ))

(defmethod niryo_robot_msgs::GetNameDescriptionListResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:name_list __name_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:description_list __description_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _name_list __name_list)
   (setq _description_list __description_list)
   (setq _objects __objects)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:name_list
   (&optional __name_list)
   (if __name_list (setq _name_list __name_list)) _name_list)
  (:description_list
   (&optional __description_list)
   (if __description_list (setq _description_list __description_list)) _description_list)
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
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; string[] _name_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name_list)) 4
    ;; string[] _description_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _description_list)) 4
    ;; niryo_robot_msgs/BasicObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string[] _name_list
     (write-long (length _name_list) s)
     (dolist (elem _name_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _description_list
     (write-long (length _description_list) s)
     (dolist (elem _description_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; niryo_robot_msgs/BasicObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _name_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _description_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _description_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _description_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
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

(defclass niryo_robot_msgs::GetNameDescriptionList
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::GetNameDescriptionList :md5sum-) "9eff00794274414fcb8d225743b92508")
(setf (get niryo_robot_msgs::GetNameDescriptionList :datatype-) "niryo_robot_msgs/GetNameDescriptionList")
(setf (get niryo_robot_msgs::GetNameDescriptionList :request) niryo_robot_msgs::GetNameDescriptionListRequest)
(setf (get niryo_robot_msgs::GetNameDescriptionList :response) niryo_robot_msgs::GetNameDescriptionListResponse)

(defmethod niryo_robot_msgs::GetNameDescriptionListRequest
  (:response () (instance niryo_robot_msgs::GetNameDescriptionListResponse :init)))

(setf (get niryo_robot_msgs::GetNameDescriptionListRequest :md5sum-) "9eff00794274414fcb8d225743b92508")
(setf (get niryo_robot_msgs::GetNameDescriptionListRequest :datatype-) "niryo_robot_msgs/GetNameDescriptionListRequest")
(setf (get niryo_robot_msgs::GetNameDescriptionListRequest :definition-)
      "---
int32 status
string message
# this service embed both old and new way to structure the datas in order to stay compatible with NS1/2
string[] name_list
string[] description_list
BasicObject[] objects

================================================================================
MSG: niryo_robot_msgs/BasicObject
string name
")

(setf (get niryo_robot_msgs::GetNameDescriptionListResponse :md5sum-) "9eff00794274414fcb8d225743b92508")
(setf (get niryo_robot_msgs::GetNameDescriptionListResponse :datatype-) "niryo_robot_msgs/GetNameDescriptionListResponse")
(setf (get niryo_robot_msgs::GetNameDescriptionListResponse :definition-)
      "---
int32 status
string message
# this service embed both old and new way to structure the datas in order to stay compatible with NS1/2
string[] name_list
string[] description_list
BasicObject[] objects

================================================================================
MSG: niryo_robot_msgs/BasicObject
string name
")



(provide :niryo_robot_msgs/GetNameDescriptionList "9eff00794274414fcb8d225743b92508")


