; Auto-generated. Do not edit!


(cl:in-package joints_interface-srv)


;//! \htmlinclude FactoryCalibration-request.msg.html

(cl:defclass <FactoryCalibration-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass FactoryCalibration-request (<FactoryCalibration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FactoryCalibration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FactoryCalibration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joints_interface-srv:<FactoryCalibration-request> is deprecated: use joints_interface-srv:FactoryCalibration-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <FactoryCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joints_interface-srv:command-val is deprecated.  Use joints_interface-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <FactoryCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joints_interface-srv:ids-val is deprecated.  Use joints_interface-srv:ids instead.")
  (ids m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FactoryCalibration-request>)))
    "Constants for message type '<FactoryCalibration-request>"
  '((:START . 2)
    (:STOP . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FactoryCalibration-request)))
    "Constants for message type 'FactoryCalibration-request"
  '((:START . 2)
    (:STOP . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FactoryCalibration-request>) ostream)
  "Serializes a message object of type '<FactoryCalibration-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FactoryCalibration-request>) istream)
  "Deserializes a message object of type '<FactoryCalibration-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FactoryCalibration-request>)))
  "Returns string type for a service object of type '<FactoryCalibration-request>"
  "joints_interface/FactoryCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FactoryCalibration-request)))
  "Returns string type for a service object of type 'FactoryCalibration-request"
  "joints_interface/FactoryCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FactoryCalibration-request>)))
  "Returns md5sum for a message object of type '<FactoryCalibration-request>"
  "951ab019c818641e90bb017371ecef02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FactoryCalibration-request)))
  "Returns md5sum for a message object of type 'FactoryCalibration-request"
  "951ab019c818641e90bb017371ecef02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FactoryCalibration-request>)))
  "Returns full string definition for message of type '<FactoryCalibration-request>"
  (cl:format cl:nil "int8 START=2~%int8 STOP=4~%~%~%uint8 command ~%uint8[] ids ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FactoryCalibration-request)))
  "Returns full string definition for message of type 'FactoryCalibration-request"
  (cl:format cl:nil "int8 START=2~%int8 STOP=4~%~%~%uint8 command ~%uint8[] ids ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FactoryCalibration-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FactoryCalibration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FactoryCalibration-request
    (cl:cons ':command (command msg))
    (cl:cons ':ids (ids msg))
))
;//! \htmlinclude FactoryCalibration-response.msg.html

(cl:defclass <FactoryCalibration-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass FactoryCalibration-response (<FactoryCalibration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FactoryCalibration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FactoryCalibration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joints_interface-srv:<FactoryCalibration-response> is deprecated: use joints_interface-srv:FactoryCalibration-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <FactoryCalibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joints_interface-srv:status-val is deprecated.  Use joints_interface-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <FactoryCalibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joints_interface-srv:message-val is deprecated.  Use joints_interface-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FactoryCalibration-response>) ostream)
  "Serializes a message object of type '<FactoryCalibration-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FactoryCalibration-response>) istream)
  "Deserializes a message object of type '<FactoryCalibration-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FactoryCalibration-response>)))
  "Returns string type for a service object of type '<FactoryCalibration-response>"
  "joints_interface/FactoryCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FactoryCalibration-response)))
  "Returns string type for a service object of type 'FactoryCalibration-response"
  "joints_interface/FactoryCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FactoryCalibration-response>)))
  "Returns md5sum for a message object of type '<FactoryCalibration-response>"
  "951ab019c818641e90bb017371ecef02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FactoryCalibration-response)))
  "Returns md5sum for a message object of type 'FactoryCalibration-response"
  "951ab019c818641e90bb017371ecef02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FactoryCalibration-response>)))
  "Returns full string definition for message of type '<FactoryCalibration-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FactoryCalibration-response)))
  "Returns full string definition for message of type 'FactoryCalibration-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FactoryCalibration-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FactoryCalibration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FactoryCalibration-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FactoryCalibration)))
  'FactoryCalibration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FactoryCalibration)))
  'FactoryCalibration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FactoryCalibration)))
  "Returns string type for a service object of type '<FactoryCalibration>"
  "joints_interface/FactoryCalibration")