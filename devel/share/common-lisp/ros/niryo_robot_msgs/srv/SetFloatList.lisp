; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-srv)


;//! \htmlinclude SetFloatList-request.msg.html

(cl:defclass <SetFloatList-request> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetFloatList-request (<SetFloatList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFloatList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFloatList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<SetFloatList-request> is deprecated: use niryo_robot_msgs-srv:SetFloatList-request instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <SetFloatList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:values-val is deprecated.  Use niryo_robot_msgs-srv:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFloatList-request>) ostream)
  "Serializes a message object of type '<SetFloatList-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFloatList-request>) istream)
  "Deserializes a message object of type '<SetFloatList-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFloatList-request>)))
  "Returns string type for a service object of type '<SetFloatList-request>"
  "niryo_robot_msgs/SetFloatListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFloatList-request)))
  "Returns string type for a service object of type 'SetFloatList-request"
  "niryo_robot_msgs/SetFloatListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFloatList-request>)))
  "Returns md5sum for a message object of type '<SetFloatList-request>"
  "aad4aec377eeec0ea90e866c6d677783")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFloatList-request)))
  "Returns md5sum for a message object of type 'SetFloatList-request"
  "aad4aec377eeec0ea90e866c6d677783")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFloatList-request>)))
  "Returns full string definition for message of type '<SetFloatList-request>"
  (cl:format cl:nil "float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFloatList-request)))
  "Returns full string definition for message of type 'SetFloatList-request"
  (cl:format cl:nil "float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFloatList-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFloatList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFloatList-request
    (cl:cons ':values (values msg))
))
;//! \htmlinclude SetFloatList-response.msg.html

(cl:defclass <SetFloatList-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetFloatList-response (<SetFloatList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFloatList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFloatList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<SetFloatList-response> is deprecated: use niryo_robot_msgs-srv:SetFloatList-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetFloatList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:status-val is deprecated.  Use niryo_robot_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetFloatList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:message-val is deprecated.  Use niryo_robot_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFloatList-response>) ostream)
  "Serializes a message object of type '<SetFloatList-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFloatList-response>) istream)
  "Deserializes a message object of type '<SetFloatList-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFloatList-response>)))
  "Returns string type for a service object of type '<SetFloatList-response>"
  "niryo_robot_msgs/SetFloatListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFloatList-response)))
  "Returns string type for a service object of type 'SetFloatList-response"
  "niryo_robot_msgs/SetFloatListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFloatList-response>)))
  "Returns md5sum for a message object of type '<SetFloatList-response>"
  "aad4aec377eeec0ea90e866c6d677783")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFloatList-response)))
  "Returns md5sum for a message object of type 'SetFloatList-response"
  "aad4aec377eeec0ea90e866c6d677783")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFloatList-response>)))
  "Returns full string definition for message of type '<SetFloatList-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFloatList-response)))
  "Returns full string definition for message of type 'SetFloatList-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFloatList-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFloatList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFloatList-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFloatList)))
  'SetFloatList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFloatList)))
  'SetFloatList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFloatList)))
  "Returns string type for a service object of type '<SetFloatList>"
  "niryo_robot_msgs/SetFloatList")