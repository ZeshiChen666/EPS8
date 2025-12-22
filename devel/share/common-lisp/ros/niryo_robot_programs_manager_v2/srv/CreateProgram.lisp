; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager_v2-srv)


;//! \htmlinclude CreateProgram-request.msg.html

(cl:defclass <CreateProgram-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (python_code
    :reader python_code
    :initarg :python_code
    :type cl:string
    :initform "")
   (blockly_code
    :reader blockly_code
    :initarg :blockly_code
    :type cl:string
    :initform ""))
)

(cl:defclass CreateProgram-request (<CreateProgram-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateProgram-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateProgram-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<CreateProgram-request> is deprecated: use niryo_robot_programs_manager_v2-srv:CreateProgram-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CreateProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:name-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <CreateProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:description-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:description instead.")
  (description m))

(cl:ensure-generic-function 'python_code-val :lambda-list '(m))
(cl:defmethod python_code-val ((m <CreateProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:python_code-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:python_code instead.")
  (python_code m))

(cl:ensure-generic-function 'blockly_code-val :lambda-list '(m))
(cl:defmethod blockly_code-val ((m <CreateProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:blockly_code-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:blockly_code instead.")
  (blockly_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateProgram-request>) ostream)
  "Serializes a message object of type '<CreateProgram-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'python_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'python_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'blockly_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'blockly_code))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateProgram-request>) istream)
  "Deserializes a message object of type '<CreateProgram-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'python_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'python_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'blockly_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'blockly_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateProgram-request>)))
  "Returns string type for a service object of type '<CreateProgram-request>"
  "niryo_robot_programs_manager_v2/CreateProgramRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateProgram-request)))
  "Returns string type for a service object of type 'CreateProgram-request"
  "niryo_robot_programs_manager_v2/CreateProgramRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateProgram-request>)))
  "Returns md5sum for a message object of type '<CreateProgram-request>"
  "55311faab2d3b7c64170cea5a33a21aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateProgram-request)))
  "Returns md5sum for a message object of type 'CreateProgram-request"
  "55311faab2d3b7c64170cea5a33a21aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateProgram-request>)))
  "Returns full string definition for message of type '<CreateProgram-request>"
  (cl:format cl:nil "# Program Name~%string name~%string description~%string python_code~%string blockly_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateProgram-request)))
  "Returns full string definition for message of type 'CreateProgram-request"
  (cl:format cl:nil "# Program Name~%string name~%string description~%string python_code~%string blockly_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateProgram-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'python_code))
     4 (cl:length (cl:slot-value msg 'blockly_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateProgram-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateProgram-request
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':python_code (python_code msg))
    (cl:cons ':blockly_code (blockly_code msg))
))
;//! \htmlinclude CreateProgram-response.msg.html

(cl:defclass <CreateProgram-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
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
    :initform ""))
)

(cl:defclass CreateProgram-response (<CreateProgram-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateProgram-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateProgram-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<CreateProgram-response> is deprecated: use niryo_robot_programs_manager_v2-srv:CreateProgram-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CreateProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:status-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CreateProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:message-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'program_id-val :lambda-list '(m))
(cl:defmethod program_id-val ((m <CreateProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:program_id-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:program_id instead.")
  (program_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateProgram-response>) ostream)
  "Serializes a message object of type '<CreateProgram-response>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'program_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'program_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateProgram-response>) istream)
  "Deserializes a message object of type '<CreateProgram-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateProgram-response>)))
  "Returns string type for a service object of type '<CreateProgram-response>"
  "niryo_robot_programs_manager_v2/CreateProgramResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateProgram-response)))
  "Returns string type for a service object of type 'CreateProgram-response"
  "niryo_robot_programs_manager_v2/CreateProgramResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateProgram-response>)))
  "Returns md5sum for a message object of type '<CreateProgram-response>"
  "55311faab2d3b7c64170cea5a33a21aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateProgram-response)))
  "Returns md5sum for a message object of type 'CreateProgram-response"
  "55311faab2d3b7c64170cea5a33a21aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateProgram-response>)))
  "Returns full string definition for message of type '<CreateProgram-response>"
  (cl:format cl:nil "int16 status~%string message~%string program_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateProgram-response)))
  "Returns full string definition for message of type 'CreateProgram-response"
  (cl:format cl:nil "int16 status~%string message~%string program_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateProgram-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'program_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateProgram-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateProgram-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':program_id (program_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CreateProgram)))
  'CreateProgram-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CreateProgram)))
  'CreateProgram-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateProgram)))
  "Returns string type for a service object of type '<CreateProgram>"
  "niryo_robot_programs_manager_v2/CreateProgram")