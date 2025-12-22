; Auto-generated. Do not edit!


(cl:in-package niryo_robot_vision-srv)


;//! \htmlinclude DebugColorDetection-request.msg.html

(cl:defclass <DebugColorDetection-request> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass DebugColorDetection-request (<DebugColorDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugColorDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugColorDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_vision-srv:<DebugColorDetection-request> is deprecated: use niryo_robot_vision-srv:DebugColorDetection-request instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <DebugColorDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:color-val is deprecated.  Use niryo_robot_vision-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugColorDetection-request>) ostream)
  "Serializes a message object of type '<DebugColorDetection-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugColorDetection-request>) istream)
  "Deserializes a message object of type '<DebugColorDetection-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugColorDetection-request>)))
  "Returns string type for a service object of type '<DebugColorDetection-request>"
  "niryo_robot_vision/DebugColorDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugColorDetection-request)))
  "Returns string type for a service object of type 'DebugColorDetection-request"
  "niryo_robot_vision/DebugColorDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugColorDetection-request>)))
  "Returns md5sum for a message object of type '<DebugColorDetection-request>"
  "908933637d27de7526939cdb2b4ead31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugColorDetection-request)))
  "Returns md5sum for a message object of type 'DebugColorDetection-request"
  "908933637d27de7526939cdb2b4ead31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugColorDetection-request>)))
  "Returns full string definition for message of type '<DebugColorDetection-request>"
  (cl:format cl:nil "string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugColorDetection-request)))
  "Returns full string definition for message of type 'DebugColorDetection-request"
  (cl:format cl:nil "string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugColorDetection-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugColorDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugColorDetection-request
    (cl:cons ':color (color msg))
))
;//! \htmlinclude DebugColorDetection-response.msg.html

(cl:defclass <DebugColorDetection-response> (roslisp-msg-protocol:ros-message)
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
   (img
    :reader img
    :initarg :img
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage)))
)

(cl:defclass DebugColorDetection-response (<DebugColorDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugColorDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugColorDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_vision-srv:<DebugColorDetection-response> is deprecated: use niryo_robot_vision-srv:DebugColorDetection-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DebugColorDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:status-val is deprecated.  Use niryo_robot_vision-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DebugColorDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:message-val is deprecated.  Use niryo_robot_vision-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'img-val :lambda-list '(m))
(cl:defmethod img-val ((m <DebugColorDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:img-val is deprecated.  Use niryo_robot_vision-srv:img instead.")
  (img m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugColorDetection-response>) ostream)
  "Serializes a message object of type '<DebugColorDetection-response>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugColorDetection-response>) istream)
  "Deserializes a message object of type '<DebugColorDetection-response>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugColorDetection-response>)))
  "Returns string type for a service object of type '<DebugColorDetection-response>"
  "niryo_robot_vision/DebugColorDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugColorDetection-response)))
  "Returns string type for a service object of type 'DebugColorDetection-response"
  "niryo_robot_vision/DebugColorDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugColorDetection-response>)))
  "Returns md5sum for a message object of type '<DebugColorDetection-response>"
  "908933637d27de7526939cdb2b4ead31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugColorDetection-response)))
  "Returns md5sum for a message object of type 'DebugColorDetection-response"
  "908933637d27de7526939cdb2b4ead31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugColorDetection-response>)))
  "Returns full string definition for message of type '<DebugColorDetection-response>"
  (cl:format cl:nil "int32 status~%string message~%sensor_msgs/CompressedImage img~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugColorDetection-response)))
  "Returns full string definition for message of type 'DebugColorDetection-response"
  (cl:format cl:nil "int32 status~%string message~%sensor_msgs/CompressedImage img~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugColorDetection-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugColorDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugColorDetection-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':img (img msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DebugColorDetection)))
  'DebugColorDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DebugColorDetection)))
  'DebugColorDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugColorDetection)))
  "Returns string type for a service object of type '<DebugColorDetection>"
  "niryo_robot_vision/DebugColorDetection")