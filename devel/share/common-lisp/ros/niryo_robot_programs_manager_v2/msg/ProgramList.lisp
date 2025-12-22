; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager_v2-msg)


;//! \htmlinclude ProgramList.msg.html

(cl:defclass <ProgramList> (roslisp-msg-protocol:ros-message)
  ((programs
    :reader programs
    :initarg :programs
    :type (cl:vector niryo_robot_programs_manager_v2-msg:Program)
   :initform (cl:make-array 0 :element-type 'niryo_robot_programs_manager_v2-msg:Program :initial-element (cl:make-instance 'niryo_robot_programs_manager_v2-msg:Program))))
)

(cl:defclass ProgramList (<ProgramList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProgramList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProgramList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager_v2-msg:<ProgramList> is deprecated: use niryo_robot_programs_manager_v2-msg:ProgramList instead.")))

(cl:ensure-generic-function 'programs-val :lambda-list '(m))
(cl:defmethod programs-val ((m <ProgramList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager_v2-msg:programs-val is deprecated.  Use niryo_robot_programs_manager_v2-msg:programs instead.")
  (programs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProgramList>) ostream)
  "Serializes a message object of type '<ProgramList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'programs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'programs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProgramList>) istream)
  "Deserializes a message object of type '<ProgramList>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProgramList>)))
  "Returns string type for a message object of type '<ProgramList>"
  "niryo_robot_programs_manager_v2/ProgramList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProgramList)))
  "Returns string type for a message object of type 'ProgramList"
  "niryo_robot_programs_manager_v2/ProgramList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProgramList>)))
  "Returns md5sum for a message object of type '<ProgramList>"
  "a5a3eee4c3101d45b45d481eeb8521cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProgramList)))
  "Returns md5sum for a message object of type 'ProgramList"
  "a5a3eee4c3101d45b45d481eeb8521cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProgramList>)))
  "Returns full string definition for message of type '<ProgramList>"
  (cl:format cl:nil "niryo_robot_programs_manager_v2/Program[] programs~%~%================================================================================~%MSG: niryo_robot_programs_manager_v2/Program~%string program_id~%string name~%string description~%bool has_blockly~%string saved_at~%string python_code~%string blockly_code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProgramList)))
  "Returns full string definition for message of type 'ProgramList"
  (cl:format cl:nil "niryo_robot_programs_manager_v2/Program[] programs~%~%================================================================================~%MSG: niryo_robot_programs_manager_v2/Program~%string program_id~%string name~%string description~%bool has_blockly~%string saved_at~%string python_code~%string blockly_code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProgramList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'programs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProgramList>))
  "Converts a ROS message object to a list"
  (cl:list 'ProgramList
    (cl:cons ':programs (programs msg))
))
