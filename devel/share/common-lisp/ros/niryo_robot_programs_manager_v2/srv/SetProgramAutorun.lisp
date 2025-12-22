; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager_v2-srv)


;//! \htmlinclude SetProgramAutorun-request.msg.html

(cl:defclass <SetProgramAutorun-request> (roslisp-msg-protocol:ros-message)
  ((program_id
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

(cl:defclass SetProgramAutorun-request (<SetProgramAutorun-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetProgramAutorun-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetProgramAutorun-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<SetProgramAutorun-request> is deprecated: use niryo_robot_programs_manager_v2-srv:SetProgramAutorun-request instead.")))

(cl:ensure-generic-function 'program_id-val :lambda-list '(m))
(cl:defmethod program_id-val ((m <SetProgramAutorun-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:program_id-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:program_id instead.")
  (program_id m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetProgramAutorun-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:mode-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetProgramAutorun-request>)))
    "Constants for message type '<SetProgramAutorun-request>"
  '((:DISABLE . 0)
    (:ONE_SHOT . 1)
    (:LOOP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetProgramAutorun-request)))
    "Constants for message type 'SetProgramAutorun-request"
  '((:DISABLE . 0)
    (:ONE_SHOT . 1)
    (:LOOP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetProgramAutorun-request>) ostream)
  "Serializes a message object of type '<SetProgramAutorun-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetProgramAutorun-request>) istream)
  "Deserializes a message object of type '<SetProgramAutorun-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetProgramAutorun-request>)))
  "Returns string type for a service object of type '<SetProgramAutorun-request>"
  "niryo_robot_programs_manager_v2/SetProgramAutorunRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetProgramAutorun-request)))
  "Returns string type for a service object of type 'SetProgramAutorun-request"
  "niryo_robot_programs_manager_v2/SetProgramAutorunRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetProgramAutorun-request>)))
  "Returns md5sum for a message object of type '<SetProgramAutorun-request>"
  "bf5e2880d3da99b3a480c54d6ac54425")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetProgramAutorun-request)))
  "Returns md5sum for a message object of type 'SetProgramAutorun-request"
  "bf5e2880d3da99b3a480c54d6ac54425")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetProgramAutorun-request>)))
  "Returns full string definition for message of type '<SetProgramAutorun-request>"
  (cl:format cl:nil "# Program id~%string program_id~%~%# Mode~%int8 DISABLE = 0~%int8 ONE_SHOT = 1~%int8 LOOP = 2~%~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetProgramAutorun-request)))
  "Returns full string definition for message of type 'SetProgramAutorun-request"
  (cl:format cl:nil "# Program id~%string program_id~%~%# Mode~%int8 DISABLE = 0~%int8 ONE_SHOT = 1~%int8 LOOP = 2~%~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetProgramAutorun-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'program_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetProgramAutorun-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetProgramAutorun-request
    (cl:cons ':program_id (program_id msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetProgramAutorun-response.msg.html

(cl:defclass <SetProgramAutorun-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetProgramAutorun-response (<SetProgramAutorun-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetProgramAutorun-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetProgramAutorun-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<SetProgramAutorun-response> is deprecated: use niryo_robot_programs_manager_v2-srv:SetProgramAutorun-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetProgramAutorun-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:status-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetProgramAutorun-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:message-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetProgramAutorun-response>) ostream)
  "Serializes a message object of type '<SetProgramAutorun-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetProgramAutorun-response>) istream)
  "Deserializes a message object of type '<SetProgramAutorun-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetProgramAutorun-response>)))
  "Returns string type for a service object of type '<SetProgramAutorun-response>"
  "niryo_robot_programs_manager_v2/SetProgramAutorunResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetProgramAutorun-response)))
  "Returns string type for a service object of type 'SetProgramAutorun-response"
  "niryo_robot_programs_manager_v2/SetProgramAutorunResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetProgramAutorun-response>)))
  "Returns md5sum for a message object of type '<SetProgramAutorun-response>"
  "bf5e2880d3da99b3a480c54d6ac54425")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetProgramAutorun-response)))
  "Returns md5sum for a message object of type 'SetProgramAutorun-response"
  "bf5e2880d3da99b3a480c54d6ac54425")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetProgramAutorun-response>)))
  "Returns full string definition for message of type '<SetProgramAutorun-response>"
  (cl:format cl:nil "int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetProgramAutorun-response)))
  "Returns full string definition for message of type 'SetProgramAutorun-response"
  (cl:format cl:nil "int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetProgramAutorun-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetProgramAutorun-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetProgramAutorun-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetProgramAutorun)))
  'SetProgramAutorun-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetProgramAutorun)))
  'SetProgramAutorun-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetProgramAutorun)))
  "Returns string type for a service object of type '<SetProgramAutorun>"
  "niryo_robot_programs_manager_v2/SetProgramAutorun")