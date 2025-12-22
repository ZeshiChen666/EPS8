; Auto-generated. Do not edit!


(cl:in-package niryo_robot_metrics-msg)


;//! \htmlinclude Metric.msg.html

(cl:defclass <Metric> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform "")
   (unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform ""))
)

(cl:defclass Metric (<Metric>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Metric>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Metric)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_metrics-msg:<Metric> is deprecated: use niryo_robot_metrics-msg:Metric instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Metric>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_metrics-msg:name-val is deprecated.  Use niryo_robot_metrics-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Metric>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_metrics-msg:value-val is deprecated.  Use niryo_robot_metrics-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <Metric>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_metrics-msg:unit-val is deprecated.  Use niryo_robot_metrics-msg:unit instead.")
  (unit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Metric>) ostream)
  "Serializes a message object of type '<Metric>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Metric>) istream)
  "Deserializes a message object of type '<Metric>"
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
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Metric>)))
  "Returns string type for a message object of type '<Metric>"
  "niryo_robot_metrics/Metric")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Metric)))
  "Returns string type for a message object of type 'Metric"
  "niryo_robot_metrics/Metric")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Metric>)))
  "Returns md5sum for a message object of type '<Metric>"
  "898aa783673b4282b5ca67c01b7159da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Metric)))
  "Returns md5sum for a message object of type 'Metric"
  "898aa783673b4282b5ca67c01b7159da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Metric>)))
  "Returns full string definition for message of type '<Metric>"
  (cl:format cl:nil "string name~%string value~%string unit~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Metric)))
  "Returns full string definition for message of type 'Metric"
  (cl:format cl:nil "string name~%string value~%string unit~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Metric>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'value))
     4 (cl:length (cl:slot-value msg 'unit))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Metric>))
  "Converts a ROS message object to a list"
  (cl:list 'Metric
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
    (cl:cons ':unit (unit msg))
))
