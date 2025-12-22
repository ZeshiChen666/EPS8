;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_user_interface::ConnectionState)
  (if (not (find-package "NIRYO_ROBOT_USER_INTERFACE"))
    (make-package "NIRYO_ROBOT_USER_INTERFACE"))
  (shadow 'ConnectionState (find-package "NIRYO_ROBOT_USER_INTERFACE")))
(unless (find-package "NIRYO_ROBOT_USER_INTERFACE::CONNECTIONSTATE")
  (make-package "NIRYO_ROBOT_USER_INTERFACE::CONNECTIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude ConnectionState.msg.html


(intern "*CONNECTION*" (find-package "NIRYO_ROBOT_USER_INTERFACE::CONNECTIONSTATE"))
(shadow '*CONNECTION* (find-package "NIRYO_ROBOT_USER_INTERFACE::CONNECTIONSTATE"))
(defconstant niryo_robot_user_interface::ConnectionState::*CONNECTION* "CONNECTION")
(intern "*OK*" (find-package "NIRYO_ROBOT_USER_INTERFACE::CONNECTIONSTATE"))
(shadow '*OK* (find-package "NIRYO_ROBOT_USER_INTERFACE::CONNECTIONSTATE"))
(defconstant niryo_robot_user_interface::ConnectionState::*OK* "OK")
(intern "*CLOSE*" (find-package "NIRYO_ROBOT_USER_INTERFACE::CONNECTIONSTATE"))
(shadow '*CLOSE* (find-package "NIRYO_ROBOT_USER_INTERFACE::CONNECTIONSTATE"))
(defconstant niryo_robot_user_interface::ConnectionState::*CLOSE* "CLOSE")

(defun niryo_robot_user_interface::ConnectionState-to-symbol (const)
  (cond
        (t nil)))

(defclass niryo_robot_user_interface::ConnectionState
  :super ros::object
  :slots (_uuid _state ))

(defmethod niryo_robot_user_interface::ConnectionState
  (:init
   (&key
    ((:uuid __uuid) "")
    ((:state __state) "")
    )
   (send-super :init)
   (setq _uuid (string __uuid))
   (setq _state (string __state))
   self)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _uuid
    4 (length _uuid)
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get niryo_robot_user_interface::ConnectionState :md5sum-) "07c91713c4d83e797d2b1ee36fd8e8ed")
(setf (get niryo_robot_user_interface::ConnectionState :datatype-) "niryo_robot_user_interface/ConnectionState")
(setf (get niryo_robot_user_interface::ConnectionState :definition-)
      "string connection = CONNECTION
string ok = OK
string close = CLOSE

string uuid
string state
")



(provide :niryo_robot_user_interface/ConnectionState "07c91713c4d83e797d2b1ee36fd8e8ed")


