; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-srv)


;//! \htmlinclude GetFloatList-request.msg.html

(cl:defclass <GetFloatList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetFloatList-request (<GetFloatList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFloatList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFloatList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<GetFloatList-request> is deprecated: use niryo_robot_msgs-srv:GetFloatList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFloatList-request>) ostream)
  "Serializes a message object of type '<GetFloatList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFloatList-request>) istream)
  "Deserializes a message object of type '<GetFloatList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFloatList-request>)))
  "Returns string type for a service object of type '<GetFloatList-request>"
  "niryo_robot_msgs/GetFloatListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloatList-request)))
  "Returns string type for a service object of type 'GetFloatList-request"
  "niryo_robot_msgs/GetFloatListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFloatList-request>)))
  "Returns md5sum for a message object of type '<GetFloatList-request>"
  "4451316e97dfda37b6fe1ea8066c7c25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFloatList-request)))
  "Returns md5sum for a message object of type 'GetFloatList-request"
  "4451316e97dfda37b6fe1ea8066c7c25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFloatList-request>)))
  "Returns full string definition for message of type '<GetFloatList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFloatList-request)))
  "Returns full string definition for message of type 'GetFloatList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFloatList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFloatList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFloatList-request
))
;//! \htmlinclude GetFloatList-response.msg.html

(cl:defclass <GetFloatList-response> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (status
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

(cl:defclass GetFloatList-response (<GetFloatList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFloatList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFloatList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<GetFloatList-response> is deprecated: use niryo_robot_msgs-srv:GetFloatList-response instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <GetFloatList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:values-val is deprecated.  Use niryo_robot_msgs-srv:values instead.")
  (values m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetFloatList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:status-val is deprecated.  Use niryo_robot_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetFloatList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:message-val is deprecated.  Use niryo_robot_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFloatList-response>) ostream)
  "Serializes a message object of type '<GetFloatList-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFloatList-response>) istream)
  "Deserializes a message object of type '<GetFloatList-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFloatList-response>)))
  "Returns string type for a service object of type '<GetFloatList-response>"
  "niryo_robot_msgs/GetFloatListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloatList-response)))
  "Returns string type for a service object of type 'GetFloatList-response"
  "niryo_robot_msgs/GetFloatListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFloatList-response>)))
  "Returns md5sum for a message object of type '<GetFloatList-response>"
  "4451316e97dfda37b6fe1ea8066c7c25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFloatList-response)))
  "Returns md5sum for a message object of type 'GetFloatList-response"
  "4451316e97dfda37b6fe1ea8066c7c25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFloatList-response>)))
  "Returns full string definition for message of type '<GetFloatList-response>"
  (cl:format cl:nil "float32[] values~%int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFloatList-response)))
  "Returns full string definition for message of type 'GetFloatList-response"
  (cl:format cl:nil "float32[] values~%int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFloatList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFloatList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFloatList-response
    (cl:cons ':values (values msg))
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFloatList)))
  'GetFloatList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFloatList)))
  'GetFloatList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloatList)))
  "Returns string type for a service object of type '<GetFloatList>"
  "niryo_robot_msgs/GetFloatList")