; Auto-generated. Do not edit!


(cl:in-package niryo_robot_rpi-msg)


;//! \htmlinclude HotspotButtonStatus.msg.html

(cl:defclass <HotspotButtonStatus> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HotspotButtonStatus (<HotspotButtonStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HotspotButtonStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HotspotButtonStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-msg:<HotspotButtonStatus> is deprecated: use niryo_robot_rpi-msg:HotspotButtonStatus instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <HotspotButtonStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-msg:mode-val is deprecated.  Use niryo_robot_rpi-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <HotspotButtonStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-msg:state-val is deprecated.  Use niryo_robot_rpi-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HotspotButtonStatus>)))
    "Constants for message type '<HotspotButtonStatus>"
  '((:SHORT_PRESS . 1)
    (:LONG_PRESS . 2)
    (:VERY_LONG_PRESS . 3)
    (:IGNORE_PRESS . 4)
    (:PRESSED . 0)
    (:RELEASED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HotspotButtonStatus)))
    "Constants for message type 'HotspotButtonStatus"
  '((:SHORT_PRESS . 1)
    (:LONG_PRESS . 2)
    (:VERY_LONG_PRESS . 3)
    (:IGNORE_PRESS . 4)
    (:PRESSED . 0)
    (:RELEASED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HotspotButtonStatus>) ostream)
  "Serializes a message object of type '<HotspotButtonStatus>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HotspotButtonStatus>) istream)
  "Deserializes a message object of type '<HotspotButtonStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HotspotButtonStatus>)))
  "Returns string type for a message object of type '<HotspotButtonStatus>"
  "niryo_robot_rpi/HotspotButtonStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HotspotButtonStatus)))
  "Returns string type for a message object of type 'HotspotButtonStatus"
  "niryo_robot_rpi/HotspotButtonStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HotspotButtonStatus>)))
  "Returns md5sum for a message object of type '<HotspotButtonStatus>"
  "b0e70f855953624e078a0ffee0bd4e2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HotspotButtonStatus)))
  "Returns md5sum for a message object of type 'HotspotButtonStatus"
  "b0e70f855953624e078a0ffee0bd4e2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HotspotButtonStatus>)))
  "Returns full string definition for message of type '<HotspotButtonStatus>"
  (cl:format cl:nil "int8 SHORT_PRESS = 1~%int8 LONG_PRESS = 2~%int8 VERY_LONG_PRESS = 3~%int8 IGNORE_PRESS = 4~%int8 mode~%~%int8 PRESSED = 0~%int8 RELEASED = 1~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HotspotButtonStatus)))
  "Returns full string definition for message of type 'HotspotButtonStatus"
  (cl:format cl:nil "int8 SHORT_PRESS = 1~%int8 LONG_PRESS = 2~%int8 VERY_LONG_PRESS = 3~%int8 IGNORE_PRESS = 4~%int8 mode~%~%int8 PRESSED = 0~%int8 RELEASED = 1~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HotspotButtonStatus>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HotspotButtonStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HotspotButtonStatus
    (cl:cons ':mode (mode msg))
    (cl:cons ':state (state msg))
))
