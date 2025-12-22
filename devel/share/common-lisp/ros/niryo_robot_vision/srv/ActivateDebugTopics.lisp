; Auto-generated. Do not edit!


(cl:in-package niryo_robot_vision-srv)


;//! \htmlinclude ActivateDebugTopics-request.msg.html

(cl:defclass <ActivateDebugTopics-request> (roslisp-msg-protocol:ros-message)
  ((topics
    :reader topics
    :initarg :topics
    :type niryo_robot_vision-msg:ActiveDebugTopics
    :initform (cl:make-instance 'niryo_robot_vision-msg:ActiveDebugTopics)))
)

(cl:defclass ActivateDebugTopics-request (<ActivateDebugTopics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActivateDebugTopics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActivateDebugTopics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_vision-srv:<ActivateDebugTopics-request> is deprecated: use niryo_robot_vision-srv:ActivateDebugTopics-request instead.")))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <ActivateDebugTopics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:topics-val is deprecated.  Use niryo_robot_vision-srv:topics instead.")
  (topics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActivateDebugTopics-request>) ostream)
  "Serializes a message object of type '<ActivateDebugTopics-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'topics) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActivateDebugTopics-request>) istream)
  "Deserializes a message object of type '<ActivateDebugTopics-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'topics) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActivateDebugTopics-request>)))
  "Returns string type for a service object of type '<ActivateDebugTopics-request>"
  "niryo_robot_vision/ActivateDebugTopicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActivateDebugTopics-request)))
  "Returns string type for a service object of type 'ActivateDebugTopics-request"
  "niryo_robot_vision/ActivateDebugTopicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActivateDebugTopics-request>)))
  "Returns md5sum for a message object of type '<ActivateDebugTopics-request>"
  "c0c5123a51741d038cae1b93404df52b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActivateDebugTopics-request)))
  "Returns md5sum for a message object of type 'ActivateDebugTopics-request"
  "c0c5123a51741d038cae1b93404df52b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActivateDebugTopics-request>)))
  "Returns full string definition for message of type '<ActivateDebugTopics-request>"
  (cl:format cl:nil "niryo_robot_vision/ActiveDebugTopics topics~%~%================================================================================~%MSG: niryo_robot_vision/ActiveDebugTopics~%bool red_channel~%bool green_channel~%bool blue_channel~%bool any_channel~%bool markers~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActivateDebugTopics-request)))
  "Returns full string definition for message of type 'ActivateDebugTopics-request"
  (cl:format cl:nil "niryo_robot_vision/ActiveDebugTopics topics~%~%================================================================================~%MSG: niryo_robot_vision/ActiveDebugTopics~%bool red_channel~%bool green_channel~%bool blue_channel~%bool any_channel~%bool markers~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActivateDebugTopics-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'topics))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActivateDebugTopics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ActivateDebugTopics-request
    (cl:cons ':topics (topics msg))
))
;//! \htmlinclude ActivateDebugTopics-response.msg.html

(cl:defclass <ActivateDebugTopics-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ActivateDebugTopics-response (<ActivateDebugTopics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActivateDebugTopics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActivateDebugTopics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_vision-srv:<ActivateDebugTopics-response> is deprecated: use niryo_robot_vision-srv:ActivateDebugTopics-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ActivateDebugTopics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:status-val is deprecated.  Use niryo_robot_vision-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ActivateDebugTopics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:message-val is deprecated.  Use niryo_robot_vision-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActivateDebugTopics-response>) ostream)
  "Serializes a message object of type '<ActivateDebugTopics-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActivateDebugTopics-response>) istream)
  "Deserializes a message object of type '<ActivateDebugTopics-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActivateDebugTopics-response>)))
  "Returns string type for a service object of type '<ActivateDebugTopics-response>"
  "niryo_robot_vision/ActivateDebugTopicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActivateDebugTopics-response)))
  "Returns string type for a service object of type 'ActivateDebugTopics-response"
  "niryo_robot_vision/ActivateDebugTopicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActivateDebugTopics-response>)))
  "Returns md5sum for a message object of type '<ActivateDebugTopics-response>"
  "c0c5123a51741d038cae1b93404df52b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActivateDebugTopics-response)))
  "Returns md5sum for a message object of type 'ActivateDebugTopics-response"
  "c0c5123a51741d038cae1b93404df52b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActivateDebugTopics-response>)))
  "Returns full string definition for message of type '<ActivateDebugTopics-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActivateDebugTopics-response)))
  "Returns full string definition for message of type 'ActivateDebugTopics-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActivateDebugTopics-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActivateDebugTopics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ActivateDebugTopics-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ActivateDebugTopics)))
  'ActivateDebugTopics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ActivateDebugTopics)))
  'ActivateDebugTopics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActivateDebugTopics)))
  "Returns string type for a service object of type '<ActivateDebugTopics>"
  "niryo_robot_vision/ActivateDebugTopics")