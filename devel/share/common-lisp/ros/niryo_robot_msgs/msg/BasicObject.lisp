; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-msg)


;//! \htmlinclude BasicObject.msg.html

(cl:defclass <BasicObject> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass BasicObject (<BasicObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BasicObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BasicObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-msg:<BasicObject> is deprecated: use niryo_robot_msgs-msg:BasicObject instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <BasicObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-msg:name-val is deprecated.  Use niryo_robot_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <BasicObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-msg:description-val is deprecated.  Use niryo_robot_msgs-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BasicObject>) ostream)
  "Serializes a message object of type '<BasicObject>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BasicObject>) istream)
  "Deserializes a message object of type '<BasicObject>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BasicObject>)))
  "Returns string type for a message object of type '<BasicObject>"
  "niryo_robot_msgs/BasicObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BasicObject)))
  "Returns string type for a message object of type 'BasicObject"
  "niryo_robot_msgs/BasicObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BasicObject>)))
  "Returns md5sum for a message object of type '<BasicObject>"
  "5a319d5d0d68cf65447a451755dbc01b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BasicObject)))
  "Returns md5sum for a message object of type 'BasicObject"
  "5a319d5d0d68cf65447a451755dbc01b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BasicObject>)))
  "Returns full string definition for message of type '<BasicObject>"
  (cl:format cl:nil "string name~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BasicObject)))
  "Returns full string definition for message of type 'BasicObject"
  (cl:format cl:nil "string name~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BasicObject>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BasicObject>))
  "Converts a ROS message object to a list"
  (cl:list 'BasicObject
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
))
