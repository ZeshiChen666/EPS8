; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager_v2-srv)


;//! \htmlinclude UpdateProgram-request.msg.html

(cl:defclass <UpdateProgram-request> (roslisp-msg-protocol:ros-message)
  ((program_id
    :reader program_id
    :initarg :program_id
    :type cl:string
    :initform "")
   (name
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

(cl:defclass UpdateProgram-request (<UpdateProgram-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateProgram-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateProgram-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<UpdateProgram-request> is deprecated: use niryo_robot_programs_manager_v2-srv:UpdateProgram-request instead.")))

(cl:ensure-generic-function 'program_id-val :lambda-list '(m))
(cl:defmethod program_id-val ((m <UpdateProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:program_id-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:program_id instead.")
  (program_id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <UpdateProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:name-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <UpdateProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:description-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:description instead.")
  (description m))

(cl:ensure-generic-function 'python_code-val :lambda-list '(m))
(cl:defmethod python_code-val ((m <UpdateProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:python_code-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:python_code instead.")
  (python_code m))

(cl:ensure-generic-function 'blockly_code-val :lambda-list '(m))
(cl:defmethod blockly_code-val ((m <UpdateProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:blockly_code-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:blockly_code instead.")
  (blockly_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateProgram-request>) ostream)
  "Serializes a message object of type '<UpdateProgram-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'program_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'program_id))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateProgram-request>) istream)
  "Deserializes a message object of type '<UpdateProgram-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'program_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'program_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateProgram-request>)))
  "Returns string type for a service object of type '<UpdateProgram-request>"
  "niryo_robot_programs_manager_v2/UpdateProgramRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateProgram-request)))
  "Returns string type for a service object of type 'UpdateProgram-request"
  "niryo_robot_programs_manager_v2/UpdateProgramRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateProgram-request>)))
  "Returns md5sum for a message object of type '<UpdateProgram-request>"
  "eb0c9f7450449983be4acb7cf3218c8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateProgram-request)))
  "Returns md5sum for a message object of type 'UpdateProgram-request"
  "eb0c9f7450449983be4acb7cf3218c8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateProgram-request>)))
  "Returns full string definition for message of type '<UpdateProgram-request>"
  (cl:format cl:nil "string program_id~%string name~%string description~%string python_code~%string blockly_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateProgram-request)))
  "Returns full string definition for message of type 'UpdateProgram-request"
  (cl:format cl:nil "string program_id~%string name~%string description~%string python_code~%string blockly_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateProgram-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'program_id))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'python_code))
     4 (cl:length (cl:slot-value msg 'blockly_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateProgram-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateProgram-request
    (cl:cons ':program_id (program_id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':python_code (python_code msg))
    (cl:cons ':blockly_code (blockly_code msg))
))
;//! \htmlinclude UpdateProgram-response.msg.html

(cl:defclass <UpdateProgram-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass UpdateProgram-response (<UpdateProgram-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateProgram-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateProgram-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<UpdateProgram-response> is deprecated: use niryo_robot_programs_manager_v2-srv:UpdateProgram-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UpdateProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:status-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <UpdateProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:message-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateProgram-response>) ostream)
  "Serializes a message object of type '<UpdateProgram-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateProgram-response>) istream)
  "Deserializes a message object of type '<UpdateProgram-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateProgram-response>)))
  "Returns string type for a service object of type '<UpdateProgram-response>"
  "niryo_robot_programs_manager_v2/UpdateProgramResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateProgram-response)))
  "Returns string type for a service object of type 'UpdateProgram-response"
  "niryo_robot_programs_manager_v2/UpdateProgramResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateProgram-response>)))
  "Returns md5sum for a message object of type '<UpdateProgram-response>"
  "eb0c9f7450449983be4acb7cf3218c8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateProgram-response)))
  "Returns md5sum for a message object of type 'UpdateProgram-response"
  "eb0c9f7450449983be4acb7cf3218c8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateProgram-response>)))
  "Returns full string definition for message of type '<UpdateProgram-response>"
  (cl:format cl:nil "int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateProgram-response)))
  "Returns full string definition for message of type 'UpdateProgram-response"
  (cl:format cl:nil "int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateProgram-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateProgram-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateProgram-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateProgram)))
  'UpdateProgram-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateProgram)))
  'UpdateProgram-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateProgram)))
  "Returns string type for a service object of type '<UpdateProgram>"
  "niryo_robot_programs_manager_v2/UpdateProgram")