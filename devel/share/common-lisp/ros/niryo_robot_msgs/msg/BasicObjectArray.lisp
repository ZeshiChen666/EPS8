; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-msg)


;//! \htmlinclude BasicObjectArray.msg.html

(cl:defclass <BasicObjectArray> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type (cl:vector niryo_robot_msgs-msg:BasicObject)
   :initform (cl:make-array 0 :element-type 'niryo_robot_msgs-msg:BasicObject :initial-element (cl:make-instance 'niryo_robot_msgs-msg:BasicObject))))
)

(cl:defclass BasicObjectArray (<BasicObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BasicObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BasicObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-msg:<BasicObjectArray> is deprecated: use niryo_robot_msgs-msg:BasicObjectArray instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <BasicObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-msg:objects-val is deprecated.  Use niryo_robot_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BasicObjectArray>) ostream)
  "Serializes a message object of type '<BasicObjectArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BasicObjectArray>) istream)
  "Deserializes a message object of type '<BasicObjectArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_msgs-msg:BasicObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BasicObjectArray>)))
  "Returns string type for a message object of type '<BasicObjectArray>"
  "niryo_robot_msgs/BasicObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BasicObjectArray)))
  "Returns string type for a message object of type 'BasicObjectArray"
  "niryo_robot_msgs/BasicObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BasicObjectArray>)))
  "Returns md5sum for a message object of type '<BasicObjectArray>"
  "cfe0a8412a62b82237847c2cddde7923")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BasicObjectArray)))
  "Returns md5sum for a message object of type 'BasicObjectArray"
  "cfe0a8412a62b82237847c2cddde7923")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BasicObjectArray>)))
  "Returns full string definition for message of type '<BasicObjectArray>"
  (cl:format cl:nil "niryo_robot_msgs/BasicObject[] objects~%================================================================================~%MSG: niryo_robot_msgs/BasicObject~%string name~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BasicObjectArray)))
  "Returns full string definition for message of type 'BasicObjectArray"
  (cl:format cl:nil "niryo_robot_msgs/BasicObject[] objects~%================================================================================~%MSG: niryo_robot_msgs/BasicObject~%string name~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BasicObjectArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BasicObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'BasicObjectArray
    (cl:cons ':objects (objects msg))
))
