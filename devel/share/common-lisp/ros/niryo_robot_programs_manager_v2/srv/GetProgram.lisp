; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager_v2-srv)


;//! \htmlinclude GetProgram-request.msg.html

(cl:defclass <GetProgram-request> (roslisp-msg-protocol:ros-message)
  ((program_id
    :reader program_id
    :initarg :program_id
    :type cl:string
    :initform ""))
)

(cl:defclass GetProgram-request (<GetProgram-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgram-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgram-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<GetProgram-request> is deprecated: use niryo_robot_programs_manager_v2-srv:GetProgram-request instead.")))

(cl:ensure-generic-function 'program_id-val :lambda-list '(m))
(cl:defmethod program_id-val ((m <GetProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:program_id-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:program_id instead.")
  (program_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgram-request>) ostream)
  "Serializes a message object of type '<GetProgram-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'program_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'program_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgram-request>) istream)
  "Deserializes a message object of type '<GetProgram-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'program_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'program_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgram-request>)))
  "Returns string type for a service object of type '<GetProgram-request>"
  "niryo_robot_programs_manager_v2/GetProgramRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgram-request)))
  "Returns string type for a service object of type 'GetProgram-request"
  "niryo_robot_programs_manager_v2/GetProgramRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgram-request>)))
  "Returns md5sum for a message object of type '<GetProgram-request>"
  "0ade8b5e1fdf93f0f73c30b7ca75dcce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgram-request)))
  "Returns md5sum for a message object of type 'GetProgram-request"
  "0ade8b5e1fdf93f0f73c30b7ca75dcce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgram-request>)))
  "Returns full string definition for message of type '<GetProgram-request>"
  (cl:format cl:nil "string program_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgram-request)))
  "Returns full string definition for message of type 'GetProgram-request"
  (cl:format cl:nil "string program_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgram-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'program_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgram-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgram-request
    (cl:cons ':program_id (program_id msg))
))
;//! \htmlinclude GetProgram-response.msg.html

(cl:defclass <GetProgram-response> (roslisp-msg-protocol:ros-message)
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
   (program
    :reader program
    :initarg :program
    :type niryo_robot_programs_manager_v2-msg:Program
    :initform (cl:make-instance 'niryo_robot_programs_manager_v2-msg:Program)))
)

(cl:defclass GetProgram-response (<GetProgram-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgram-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgram-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<GetProgram-response> is deprecated: use niryo_robot_programs_manager_v2-srv:GetProgram-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:status-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:message-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'program-val :lambda-list '(m))
(cl:defmethod program-val ((m <GetProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:program-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:program instead.")
  (program m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgram-response>) ostream)
  "Serializes a message object of type '<GetProgram-response>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'program) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgram-response>) istream)
  "Deserializes a message object of type '<GetProgram-response>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'program) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgram-response>)))
  "Returns string type for a service object of type '<GetProgram-response>"
  "niryo_robot_programs_manager_v2/GetProgramResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgram-response)))
  "Returns string type for a service object of type 'GetProgram-response"
  "niryo_robot_programs_manager_v2/GetProgramResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgram-response>)))
  "Returns md5sum for a message object of type '<GetProgram-response>"
  "0ade8b5e1fdf93f0f73c30b7ca75dcce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgram-response)))
  "Returns md5sum for a message object of type 'GetProgram-response"
  "0ade8b5e1fdf93f0f73c30b7ca75dcce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgram-response>)))
  "Returns full string definition for message of type '<GetProgram-response>"
  (cl:format cl:nil "int32 status~%string message~%niryo_robot_programs_manager_v2/Program program~%~%~%================================================================================~%MSG: niryo_robot_programs_manager_v2/Program~%string program_id~%string name~%string description~%bool has_blockly~%string saved_at~%string python_code~%string blockly_code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgram-response)))
  "Returns full string definition for message of type 'GetProgram-response"
  (cl:format cl:nil "int32 status~%string message~%niryo_robot_programs_manager_v2/Program program~%~%~%================================================================================~%MSG: niryo_robot_programs_manager_v2/Program~%string program_id~%string name~%string description~%bool has_blockly~%string saved_at~%string python_code~%string blockly_code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgram-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'program))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgram-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgram-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':program (program msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetProgram)))
  'GetProgram-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetProgram)))
  'GetProgram-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgram)))
  "Returns string type for a service object of type '<GetProgram>"
  "niryo_robot_programs_manager_v2/GetProgram")