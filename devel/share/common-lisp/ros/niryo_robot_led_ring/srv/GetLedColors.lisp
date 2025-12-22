; Auto-generated. Do not edit!


(cl:in-package niryo_robot_led_ring-srv)


;//! \htmlinclude GetLedColors-request.msg.html

(cl:defclass <GetLedColors-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLedColors-request (<GetLedColors-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLedColors-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLedColors-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_led_ring-srv:<GetLedColors-request> is deprecated: use niryo_robot_led_ring-srv:GetLedColors-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLedColors-request>) ostream)
  "Serializes a message object of type '<GetLedColors-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLedColors-request>) istream)
  "Deserializes a message object of type '<GetLedColors-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLedColors-request>)))
  "Returns string type for a service object of type '<GetLedColors-request>"
  "niryo_robot_led_ring/GetLedColorsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLedColors-request)))
  "Returns string type for a service object of type 'GetLedColors-request"
  "niryo_robot_led_ring/GetLedColorsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLedColors-request>)))
  "Returns md5sum for a message object of type '<GetLedColors-request>"
  "a00eb631a727c358bd52d7c6213b37a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLedColors-request)))
  "Returns md5sum for a message object of type 'GetLedColors-request"
  "a00eb631a727c358bd52d7c6213b37a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLedColors-request>)))
  "Returns full string definition for message of type '<GetLedColors-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLedColors-request)))
  "Returns full string definition for message of type 'GetLedColors-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLedColors-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLedColors-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLedColors-request
))
;//! \htmlinclude GetLedColors-response.msg.html

(cl:defclass <GetLedColors-response> (roslisp-msg-protocol:ros-message)
  ((led_ring_colors
    :reader led_ring_colors
    :initarg :led_ring_colors
    :type (cl:vector std_msgs-msg:ColorRGBA)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:ColorRGBA :initial-element (cl:make-instance 'std_msgs-msg:ColorRGBA)))
   (status
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

(cl:defclass GetLedColors-response (<GetLedColors-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLedColors-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLedColors-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_led_ring-srv:<GetLedColors-response> is deprecated: use niryo_robot_led_ring-srv:GetLedColors-response instead.")))

(cl:ensure-generic-function 'led_ring_colors-val :lambda-list '(m))
(cl:defmethod led_ring_colors-val ((m <GetLedColors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:led_ring_colors-val is deprecated.  Use niryo_robot_led_ring-srv:led_ring_colors instead.")
  (led_ring_colors m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetLedColors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:status-val is deprecated.  Use niryo_robot_led_ring-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetLedColors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:message-val is deprecated.  Use niryo_robot_led_ring-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLedColors-response>) ostream)
  "Serializes a message object of type '<GetLedColors-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'led_ring_colors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'led_ring_colors))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLedColors-response>) istream)
  "Deserializes a message object of type '<GetLedColors-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'led_ring_colors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'led_ring_colors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:ColorRGBA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLedColors-response>)))
  "Returns string type for a service object of type '<GetLedColors-response>"
  "niryo_robot_led_ring/GetLedColorsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLedColors-response)))
  "Returns string type for a service object of type 'GetLedColors-response"
  "niryo_robot_led_ring/GetLedColorsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLedColors-response>)))
  "Returns md5sum for a message object of type '<GetLedColors-response>"
  "a00eb631a727c358bd52d7c6213b37a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLedColors-response)))
  "Returns md5sum for a message object of type 'GetLedColors-response"
  "a00eb631a727c358bd52d7c6213b37a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLedColors-response>)))
  "Returns full string definition for message of type '<GetLedColors-response>"
  (cl:format cl:nil "std_msgs/ColorRGBA[] led_ring_colors~%int32 status~%string message~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLedColors-response)))
  "Returns full string definition for message of type 'GetLedColors-response"
  (cl:format cl:nil "std_msgs/ColorRGBA[] led_ring_colors~%int32 status~%string message~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLedColors-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'led_ring_colors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLedColors-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLedColors-response
    (cl:cons ':led_ring_colors (led_ring_colors msg))
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLedColors)))
  'GetLedColors-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLedColors)))
  'GetLedColors-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLedColors)))
  "Returns string type for a service object of type '<GetLedColors>"
  "niryo_robot_led_ring/GetLedColors")