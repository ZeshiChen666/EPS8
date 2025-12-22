; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager_v2-srv)


;//! \htmlinclude GetProgramAutorunInfos-request.msg.html

(cl:defclass <GetProgramAutorunInfos-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetProgramAutorunInfos-request (<GetProgramAutorunInfos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgramAutorunInfos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgramAutorunInfos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<GetProgramAutorunInfos-request> is deprecated: use niryo_robot_programs_manager_v2-srv:GetProgramAutorunInfos-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgramAutorunInfos-request>) ostream)
  "Serializes a message object of type '<GetProgramAutorunInfos-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgramAutorunInfos-request>) istream)
  "Deserializes a message object of type '<GetProgramAutorunInfos-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgramAutorunInfos-request>)))
  "Returns string type for a service object of type '<GetProgramAutorunInfos-request>"
  "niryo_robot_programs_manager_v2/GetProgramAutorunInfosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramAutorunInfos-request)))
  "Returns string type for a service object of type 'GetProgramAutorunInfos-request"
  "niryo_robot_programs_manager_v2/GetProgramAutorunInfosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgramAutorunInfos-request>)))
  "Returns md5sum for a message object of type '<GetProgramAutorunInfos-request>"
  "e8981d6a455c23b2e3b12e77054c6e8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgramAutorunInfos-request)))
  "Returns md5sum for a message object of type 'GetProgramAutorunInfos-request"
  "e8981d6a455c23b2e3b12e77054c6e8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgramAutorunInfos-request>)))
  "Returns full string definition for message of type '<GetProgramAutorunInfos-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgramAutorunInfos-request)))
  "Returns full string definition for message of type 'GetProgramAutorunInfos-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgramAutorunInfos-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgramAutorunInfos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgramAutorunInfos-request
))
;//! \htmlinclude GetProgramAutorunInfos-response.msg.html

(cl:defclass <GetProgramAutorunInfos-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (program_id
    :reader program_id
    :initarg :program_id
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetProgramAutorunInfos-response (<GetProgramAutorunInfos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgramAutorunInfos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgramAutorunInfos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<GetProgramAutorunInfos-response> is deprecated: use niryo_robot_programs_manager_v2-srv:GetProgramAutorunInfos-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetProgramAutorunInfos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:status-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetProgramAutorunInfos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:message-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'program_id-val :lambda-list '(m))
(cl:defmethod program_id-val ((m <GetProgramAutorunInfos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:program_id-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:program_id instead.")
  (program_id m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GetProgramAutorunInfos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:mode-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetProgramAutorunInfos-response>)))
    "Constants for message type '<GetProgramAutorunInfos-response>"
  '((:DISABLE . 0)
    (:ONE_SHOT . 1)
    (:LOOP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetProgramAutorunInfos-response)))
    "Constants for message type 'GetProgramAutorunInfos-response"
  '((:DISABLE . 0)
    (:ONE_SHOT . 1)
    (:LOOP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgramAutorunInfos-response>) ostream)
  "Serializes a message object of type '<GetProgramAutorunInfos-response>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'program_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'program_id))
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgramAutorunInfos-response>) istream)
  "Deserializes a message object of type '<GetProgramAutorunInfos-response>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'program_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'program_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgramAutorunInfos-response>)))
  "Returns string type for a service object of type '<GetProgramAutorunInfos-response>"
  "niryo_robot_programs_manager_v2/GetProgramAutorunInfosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramAutorunInfos-response)))
  "Returns string type for a service object of type 'GetProgramAutorunInfos-response"
  "niryo_robot_programs_manager_v2/GetProgramAutorunInfosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgramAutorunInfos-response>)))
  "Returns md5sum for a message object of type '<GetProgramAutorunInfos-response>"
  "e8981d6a455c23b2e3b12e77054c6e8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgramAutorunInfos-response)))
  "Returns md5sum for a message object of type 'GetProgramAutorunInfos-response"
  "e8981d6a455c23b2e3b12e77054c6e8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgramAutorunInfos-response>)))
  "Returns full string definition for message of type '<GetProgramAutorunInfos-response>"
  (cl:format cl:nil "int32 status~%string message~%~%string program_id~%~%# Mode~%int8 DISABLE = 0~%int8 ONE_SHOT = 1~%int8 LOOP = 2~%~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgramAutorunInfos-response)))
  "Returns full string definition for message of type 'GetProgramAutorunInfos-response"
  (cl:format cl:nil "int32 status~%string message~%~%string program_id~%~%# Mode~%int8 DISABLE = 0~%int8 ONE_SHOT = 1~%int8 LOOP = 2~%~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgramAutorunInfos-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'program_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgramAutorunInfos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgramAutorunInfos-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':program_id (program_id msg))
    (cl:cons ':mode (mode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetProgramAutorunInfos)))
  'GetProgramAutorunInfos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetProgramAutorunInfos)))
  'GetProgramAutorunInfos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramAutorunInfos)))
  "Returns string type for a service object of type '<GetProgramAutorunInfos>"
  "niryo_robot_programs_manager_v2/GetProgramAutorunInfos")