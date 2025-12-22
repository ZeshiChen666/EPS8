; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager_v2-srv)


;//! \htmlinclude DeleteProgram-request.msg.html

(cl:defclass <DeleteProgram-request> (roslisp-msg-protocol:ros-message)
  ((program_id
    :reader program_id
    :initarg :program_id
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteProgram-request (<DeleteProgram-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteProgram-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteProgram-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<DeleteProgram-request> is deprecated: use niryo_robot_programs_manager_v2-srv:DeleteProgram-request instead.")))

(cl:ensure-generic-function 'program_id-val :lambda-list '(m))
(cl:defmethod program_id-val ((m <DeleteProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:program_id-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:program_id instead.")
  (program_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteProgram-request>) ostream)
  "Serializes a message object of type '<DeleteProgram-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'program_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'program_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteProgram-request>) istream)
  "Deserializes a message object of type '<DeleteProgram-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteProgram-request>)))
  "Returns string type for a service object of type '<DeleteProgram-request>"
  "niryo_robot_programs_manager_v2/DeleteProgramRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteProgram-request)))
  "Returns string type for a service object of type 'DeleteProgram-request"
  "niryo_robot_programs_manager_v2/DeleteProgramRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteProgram-request>)))
  "Returns md5sum for a message object of type '<DeleteProgram-request>"
  "501c46b3f9338389dd9ce4d07338320f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteProgram-request)))
  "Returns md5sum for a message object of type 'DeleteProgram-request"
  "501c46b3f9338389dd9ce4d07338320f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteProgram-request>)))
  "Returns full string definition for message of type '<DeleteProgram-request>"
  (cl:format cl:nil "string program_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteProgram-request)))
  "Returns full string definition for message of type 'DeleteProgram-request"
  (cl:format cl:nil "string program_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteProgram-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'program_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteProgram-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteProgram-request
    (cl:cons ':program_id (program_id msg))
))
;//! \htmlinclude DeleteProgram-response.msg.html

(cl:defclass <DeleteProgram-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteProgram-response (<DeleteProgram-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteProgram-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteProgram-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<DeleteProgram-response> is deprecated: use niryo_robot_programs_manager_v2-srv:DeleteProgram-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DeleteProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:status-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:message-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteProgram-response>) ostream)
  "Serializes a message object of type '<DeleteProgram-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteProgram-response>) istream)
  "Deserializes a message object of type '<DeleteProgram-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteProgram-response>)))
  "Returns string type for a service object of type '<DeleteProgram-response>"
  "niryo_robot_programs_manager_v2/DeleteProgramResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteProgram-response)))
  "Returns string type for a service object of type 'DeleteProgram-response"
  "niryo_robot_programs_manager_v2/DeleteProgramResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteProgram-response>)))
  "Returns md5sum for a message object of type '<DeleteProgram-response>"
  "501c46b3f9338389dd9ce4d07338320f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteProgram-response)))
  "Returns md5sum for a message object of type 'DeleteProgram-response"
  "501c46b3f9338389dd9ce4d07338320f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteProgram-response>)))
  "Returns full string definition for message of type '<DeleteProgram-response>"
  (cl:format cl:nil "int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteProgram-response)))
  "Returns full string definition for message of type 'DeleteProgram-response"
  (cl:format cl:nil "int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteProgram-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteProgram-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteProgram-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteProgram)))
  'DeleteProgram-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteProgram)))
  'DeleteProgram-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteProgram)))
  "Returns string type for a service object of type '<DeleteProgram>"
  "niryo_robot_programs_manager_v2/DeleteProgram")