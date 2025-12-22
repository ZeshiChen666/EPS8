; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager_v2-msg)


;//! \htmlinclude Program.msg.html

(cl:defclass <Program> (roslisp-msg-protocol:ros-message)
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
   (has_blockly
    :reader has_blockly
    :initarg :has_blockly
    :type cl:boolean
    :initform cl:nil)
   (saved_at
    :reader saved_at
    :initarg :saved_at
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

(cl:defclass Program (<Program>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Program>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Program)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-msg:<Program> is deprecated: use niryo_robot_programs_manager_v2-msg:Program instead.")))

(cl:ensure-generic-function 'program_id-val :lambda-list '(m))
(cl:defmethod program_id-val ((m <Program>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-msg:program_id-val is deprecated.  Use niryo_robot_programs_manager_v2-msg:program_id instead.")
  (program_id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Program>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-msg:name-val is deprecated.  Use niryo_robot_programs_manager_v2-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Program>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-msg:description-val is deprecated.  Use niryo_robot_programs_manager_v2-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'has_blockly-val :lambda-list '(m))
(cl:defmethod has_blockly-val ((m <Program>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-msg:has_blockly-val is deprecated.  Use niryo_robot_programs_manager_v2-msg:has_blockly instead.")
  (has_blockly m))

(cl:ensure-generic-function 'saved_at-val :lambda-list '(m))
(cl:defmethod saved_at-val ((m <Program>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-msg:saved_at-val is deprecated.  Use niryo_robot_programs_manager_v2-msg:saved_at instead.")
  (saved_at m))

(cl:ensure-generic-function 'python_code-val :lambda-list '(m))
(cl:defmethod python_code-val ((m <Program>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-msg:python_code-val is deprecated.  Use niryo_robot_programs_manager_v2-msg:python_code instead.")
  (python_code m))

(cl:ensure-generic-function 'blockly_code-val :lambda-list '(m))
(cl:defmethod blockly_code-val ((m <Program>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-msg:blockly_code-val is deprecated.  Use niryo_robot_programs_manager_v2-msg:blockly_code instead.")
  (blockly_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Program>) ostream)
  "Serializes a message object of type '<Program>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_blockly) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'saved_at))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'saved_at))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Program>) istream)
  "Deserializes a message object of type '<Program>"
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
    (cl:setf (cl:slot-value msg 'has_blockly) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'saved_at) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'saved_at) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Program>)))
  "Returns string type for a message object of type '<Program>"
  "niryo_robot_programs_manager_v2/Program")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Program)))
  "Returns string type for a message object of type 'Program"
  "niryo_robot_programs_manager_v2/Program")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Program>)))
  "Returns md5sum for a message object of type '<Program>"
  "02cd6606b088c8d3c241a7b018a0926f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Program)))
  "Returns md5sum for a message object of type 'Program"
  "02cd6606b088c8d3c241a7b018a0926f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Program>)))
  "Returns full string definition for message of type '<Program>"
  (cl:format cl:nil "string program_id~%string name~%string description~%bool has_blockly~%string saved_at~%string python_code~%string blockly_code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Program)))
  "Returns full string definition for message of type 'Program"
  (cl:format cl:nil "string program_id~%string name~%string description~%bool has_blockly~%string saved_at~%string python_code~%string blockly_code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Program>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'program_id))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
     1
     4 (cl:length (cl:slot-value msg 'saved_at))
     4 (cl:length (cl:slot-value msg 'python_code))
     4 (cl:length (cl:slot-value msg 'blockly_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Program>))
  "Converts a ROS message object to a list"
  (cl:list 'Program
    (cl:cons ':program_id (program_id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':has_blockly (has_blockly msg))
    (cl:cons ':saved_at (saved_at msg))
    (cl:cons ':python_code (python_code msg))
    (cl:cons ':blockly_code (blockly_code msg))
))
