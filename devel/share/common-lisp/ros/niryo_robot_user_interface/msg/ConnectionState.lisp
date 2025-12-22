; Auto-generated. Do not edit!


(cl:in-package niryo_robot_user_interface-msg)


;//! \htmlinclude ConnectionState.msg.html

(cl:defclass <ConnectionState> (roslisp-msg-protocol:ros-message)
  ((uuid
    :reader uuid
    :initarg :uuid
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass ConnectionState (<ConnectionState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectionState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectionState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_user_interface-msg:<ConnectionState> is deprecated: use niryo_robot_user_interface-msg:ConnectionState instead.")))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <ConnectionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_user_interface-msg:uuid-val is deprecated.  Use niryo_robot_user_interface-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ConnectionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_user_interface-msg:state-val is deprecated.  Use niryo_robot_user_interface-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConnectionState>)))
    "Constants for message type '<ConnectionState>"
  '((:CONNECTION . "CONNECTION")
    (:OK . "OK")
    (:CLOSE . "CLOSE"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConnectionState)))
    "Constants for message type 'ConnectionState"
  '((:CONNECTION . "CONNECTION")
    (:OK . "OK")
    (:CLOSE . "CLOSE"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectionState>) ostream)
  "Serializes a message object of type '<ConnectionState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectionState>) istream)
  "Deserializes a message object of type '<ConnectionState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectionState>)))
  "Returns string type for a message object of type '<ConnectionState>"
  "niryo_robot_user_interface/ConnectionState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectionState)))
  "Returns string type for a message object of type 'ConnectionState"
  "niryo_robot_user_interface/ConnectionState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectionState>)))
  "Returns md5sum for a message object of type '<ConnectionState>"
  "07c91713c4d83e797d2b1ee36fd8e8ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectionState)))
  "Returns md5sum for a message object of type 'ConnectionState"
  "07c91713c4d83e797d2b1ee36fd8e8ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectionState>)))
  "Returns full string definition for message of type '<ConnectionState>"
  (cl:format cl:nil "string connection = CONNECTION~%string ok = OK~%string close = CLOSE~%~%string uuid~%string state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectionState)))
  "Returns full string definition for message of type 'ConnectionState"
  (cl:format cl:nil "string connection = CONNECTION~%string ok = OK~%string close = CLOSE~%~%string uuid~%string state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectionState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uuid))
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectionState>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectionState
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':state (state msg))
))
