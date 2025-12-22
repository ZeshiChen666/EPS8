; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager_v2-srv)


;//! \htmlinclude GetProgramList-request.msg.html

(cl:defclass <GetProgramList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetProgramList-request (<GetProgramList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgramList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgramList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<GetProgramList-request> is deprecated: use niryo_robot_programs_manager_v2-srv:GetProgramList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgramList-request>) ostream)
  "Serializes a message object of type '<GetProgramList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgramList-request>) istream)
  "Deserializes a message object of type '<GetProgramList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgramList-request>)))
  "Returns string type for a service object of type '<GetProgramList-request>"
  "niryo_robot_programs_manager_v2/GetProgramListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramList-request)))
  "Returns string type for a service object of type 'GetProgramList-request"
  "niryo_robot_programs_manager_v2/GetProgramListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgramList-request>)))
  "Returns md5sum for a message object of type '<GetProgramList-request>"
  "b71139d068539b14853901004189dc3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgramList-request)))
  "Returns md5sum for a message object of type 'GetProgramList-request"
  "b71139d068539b14853901004189dc3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgramList-request>)))
  "Returns full string definition for message of type '<GetProgramList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgramList-request)))
  "Returns full string definition for message of type 'GetProgramList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgramList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgramList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgramList-request
))
;//! \htmlinclude GetProgramList-response.msg.html

(cl:defclass <GetProgramList-response> (roslisp-msg-protocol:ros-message)
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
   (programs
    :reader programs
    :initarg :programs
    :type (cl:vector niryo_robot_programs_manager_v2-msg:Program)
   :initform (cl:make-array 0 :element-type 'niryo_robot_programs_manager_v2-msg:Program :initial-element (cl:make-instance 'niryo_robot_programs_manager_v2-msg:Program))))
)

(cl:defclass GetProgramList-response (<GetProgramList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgramList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgramList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-srv:<GetProgramList-response> is deprecated: use niryo_robot_programs_manager_v2-srv:GetProgramList-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetProgramList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:status-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetProgramList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:message-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'programs-val :lambda-list '(m))
(cl:defmethod programs-val ((m <GetProgramList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-srv:programs-val is deprecated.  Use niryo_robot_programs_manager_v2-srv:programs instead.")
  (programs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgramList-response>) ostream)
  "Serializes a message object of type '<GetProgramList-response>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'programs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'programs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgramList-response>) istream)
  "Deserializes a message object of type '<GetProgramList-response>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'programs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'programs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_programs_manager_v2-msg:Program))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgramList-response>)))
  "Returns string type for a service object of type '<GetProgramList-response>"
  "niryo_robot_programs_manager_v2/GetProgramListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramList-response)))
  "Returns string type for a service object of type 'GetProgramList-response"
  "niryo_robot_programs_manager_v2/GetProgramListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgramList-response>)))
  "Returns md5sum for a message object of type '<GetProgramList-response>"
  "b71139d068539b14853901004189dc3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgramList-response)))
  "Returns md5sum for a message object of type 'GetProgramList-response"
  "b71139d068539b14853901004189dc3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgramList-response>)))
  "Returns full string definition for message of type '<GetProgramList-response>"
  (cl:format cl:nil "int32 status~%string message~%niryo_robot_programs_manager_v2/Program[] programs~%~%================================================================================~%MSG: niryo_robot_programs_manager_v2/Program~%string program_id~%string name~%string description~%bool has_blockly~%string saved_at~%string python_code~%string blockly_code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgramList-response)))
  "Returns full string definition for message of type 'GetProgramList-response"
  (cl:format cl:nil "int32 status~%string message~%niryo_robot_programs_manager_v2/Program[] programs~%~%================================================================================~%MSG: niryo_robot_programs_manager_v2/Program~%string program_id~%string name~%string description~%bool has_blockly~%string saved_at~%string python_code~%string blockly_code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgramList-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'programs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgramList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgramList-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':programs (programs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetProgramList)))
  'GetProgramList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetProgramList)))
  'GetProgramList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramList)))
  "Returns string type for a service object of type '<GetProgramList>"
  "niryo_robot_programs_manager_v2/GetProgramList")