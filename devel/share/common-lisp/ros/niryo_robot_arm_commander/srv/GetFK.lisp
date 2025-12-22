; Auto-generated. Do not edit!


(cl:in-package niryo_robot_arm_commander-srv)


;//! \htmlinclude GetFK-request.msg.html

(cl:defclass <GetFK-request> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetFK-request (<GetFK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-srv:<GetFK-request> is deprecated: use niryo_robot_arm_commander-srv:GetFK-request instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <GetFK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:joints-val is deprecated.  Use niryo_robot_arm_commander-srv:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFK-request>) ostream)
  "Serializes a message object of type '<GetFK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFK-request>) istream)
  "Deserializes a message object of type '<GetFK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFK-request>)))
  "Returns string type for a service object of type '<GetFK-request>"
  "niryo_robot_arm_commander/GetFKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFK-request)))
  "Returns string type for a service object of type 'GetFK-request"
  "niryo_robot_arm_commander/GetFKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFK-request>)))
  "Returns md5sum for a message object of type '<GetFK-request>"
  "2310075d1647ca5fda5d160b07589040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFK-request)))
  "Returns md5sum for a message object of type 'GetFK-request"
  "2310075d1647ca5fda5d160b07589040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFK-request>)))
  "Returns full string definition for message of type '<GetFK-request>"
  (cl:format cl:nil "float32[] joints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFK-request)))
  "Returns full string definition for message of type 'GetFK-request"
  (cl:format cl:nil "float32[] joints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFK-request
    (cl:cons ':joints (joints msg))
))
;//! \htmlinclude GetFK-response.msg.html

(cl:defclass <GetFK-response> (roslisp-msg-protocol:ros-message)
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
   (pose
    :reader pose
    :initarg :pose
    :type niryo_robot_msgs-msg:RobotState
    :initform (cl:make-instance 'niryo_robot_msgs-msg:RobotState)))
)

(cl:defclass GetFK-response (<GetFK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-srv:<GetFK-response> is deprecated: use niryo_robot_arm_commander-srv:GetFK-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:status-val is deprecated.  Use niryo_robot_arm_commander-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:message-val is deprecated.  Use niryo_robot_arm_commander-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:pose-val is deprecated.  Use niryo_robot_arm_commander-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFK-response>) ostream)
  "Serializes a message object of type '<GetFK-response>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFK-response>) istream)
  "Deserializes a message object of type '<GetFK-response>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFK-response>)))
  "Returns string type for a service object of type '<GetFK-response>"
  "niryo_robot_arm_commander/GetFKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFK-response)))
  "Returns string type for a service object of type 'GetFK-response"
  "niryo_robot_arm_commander/GetFKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFK-response>)))
  "Returns md5sum for a message object of type '<GetFK-response>"
  "2310075d1647ca5fda5d160b07589040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFK-response)))
  "Returns md5sum for a message object of type 'GetFK-response"
  "2310075d1647ca5fda5d160b07589040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFK-response>)))
  "Returns full string definition for message of type '<GetFK-response>"
  (cl:format cl:nil "int32 status~%string message~%niryo_robot_msgs/RobotState pose~%~%~%================================================================================~%MSG: niryo_robot_msgs/RobotState~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%geometry_msgs/Twist twist~%float64 tcp_speed~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFK-response)))
  "Returns full string definition for message of type 'GetFK-response"
  (cl:format cl:nil "int32 status~%string message~%niryo_robot_msgs/RobotState pose~%~%~%================================================================================~%MSG: niryo_robot_msgs/RobotState~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%geometry_msgs/Twist twist~%float64 tcp_speed~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFK-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFK-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFK)))
  'GetFK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFK)))
  'GetFK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFK)))
  "Returns string type for a service object of type '<GetFK>"
  "niryo_robot_arm_commander/GetFK")