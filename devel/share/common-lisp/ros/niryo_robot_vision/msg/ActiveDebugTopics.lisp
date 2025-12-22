; Auto-generated. Do not edit!


(cl:in-package niryo_robot_vision-msg)


;//! \htmlinclude ActiveDebugTopics.msg.html

(cl:defclass <ActiveDebugTopics> (roslisp-msg-protocol:ros-message)
  ((red_channel
    :reader red_channel
    :initarg :red_channel
    :type cl:boolean
    :initform cl:nil)
   (green_channel
    :reader green_channel
    :initarg :green_channel
    :type cl:boolean
    :initform cl:nil)
   (blue_channel
    :reader blue_channel
    :initarg :blue_channel
    :type cl:boolean
    :initform cl:nil)
   (any_channel
    :reader any_channel
    :initarg :any_channel
    :type cl:boolean
    :initform cl:nil)
   (markers
    :reader markers
    :initarg :markers
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ActiveDebugTopics (<ActiveDebugTopics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActiveDebugTopics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActiveDebugTopics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_vision-msg:<ActiveDebugTopics> is deprecated: use niryo_robot_vision-msg:ActiveDebugTopics instead.")))

(cl:ensure-generic-function 'red_channel-val :lambda-list '(m))
(cl:defmethod red_channel-val ((m <ActiveDebugTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-msg:red_channel-val is deprecated.  Use niryo_robot_vision-msg:red_channel instead.")
  (red_channel m))

(cl:ensure-generic-function 'green_channel-val :lambda-list '(m))
(cl:defmethod green_channel-val ((m <ActiveDebugTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-msg:green_channel-val is deprecated.  Use niryo_robot_vision-msg:green_channel instead.")
  (green_channel m))

(cl:ensure-generic-function 'blue_channel-val :lambda-list '(m))
(cl:defmethod blue_channel-val ((m <ActiveDebugTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-msg:blue_channel-val is deprecated.  Use niryo_robot_vision-msg:blue_channel instead.")
  (blue_channel m))

(cl:ensure-generic-function 'any_channel-val :lambda-list '(m))
(cl:defmethod any_channel-val ((m <ActiveDebugTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-msg:any_channel-val is deprecated.  Use niryo_robot_vision-msg:any_channel instead.")
  (any_channel m))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <ActiveDebugTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-msg:markers-val is deprecated.  Use niryo_robot_vision-msg:markers instead.")
  (markers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActiveDebugTopics>) ostream)
  "Serializes a message object of type '<ActiveDebugTopics>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'red_channel) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'green_channel) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'blue_channel) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'any_channel) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'markers) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActiveDebugTopics>) istream)
  "Deserializes a message object of type '<ActiveDebugTopics>"
    (cl:setf (cl:slot-value msg 'red_channel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'green_channel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'blue_channel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'any_channel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'markers) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActiveDebugTopics>)))
  "Returns string type for a message object of type '<ActiveDebugTopics>"
  "niryo_robot_vision/ActiveDebugTopics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActiveDebugTopics)))
  "Returns string type for a message object of type 'ActiveDebugTopics"
  "niryo_robot_vision/ActiveDebugTopics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActiveDebugTopics>)))
  "Returns md5sum for a message object of type '<ActiveDebugTopics>"
  "10965b7aa16fcc09509da71fe3d98caa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActiveDebugTopics)))
  "Returns md5sum for a message object of type 'ActiveDebugTopics"
  "10965b7aa16fcc09509da71fe3d98caa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActiveDebugTopics>)))
  "Returns full string definition for message of type '<ActiveDebugTopics>"
  (cl:format cl:nil "bool red_channel~%bool green_channel~%bool blue_channel~%bool any_channel~%bool markers~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActiveDebugTopics)))
  "Returns full string definition for message of type 'ActiveDebugTopics"
  (cl:format cl:nil "bool red_channel~%bool green_channel~%bool blue_channel~%bool any_channel~%bool markers~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActiveDebugTopics>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActiveDebugTopics>))
  "Converts a ROS message object to a list"
  (cl:list 'ActiveDebugTopics
    (cl:cons ':red_channel (red_channel msg))
    (cl:cons ':green_channel (green_channel msg))
    (cl:cons ':blue_channel (blue_channel msg))
    (cl:cons ':any_channel (any_channel msg))
    (cl:cons ':markers (markers msg))
))
