; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-srv)


;//! \htmlinclude GetNameDescriptionList-request.msg.html

(cl:defclass <GetNameDescriptionList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNameDescriptionList-request (<GetNameDescriptionList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNameDescriptionList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNameDescriptionList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<GetNameDescriptionList-request> is deprecated: use niryo_robot_msgs-srv:GetNameDescriptionList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNameDescriptionList-request>) ostream)
  "Serializes a message object of type '<GetNameDescriptionList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNameDescriptionList-request>) istream)
  "Deserializes a message object of type '<GetNameDescriptionList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNameDescriptionList-request>)))
  "Returns string type for a service object of type '<GetNameDescriptionList-request>"
  "niryo_robot_msgs/GetNameDescriptionListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNameDescriptionList-request)))
  "Returns string type for a service object of type 'GetNameDescriptionList-request"
  "niryo_robot_msgs/GetNameDescriptionListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNameDescriptionList-request>)))
  "Returns md5sum for a message object of type '<GetNameDescriptionList-request>"
  "9eff00794274414fcb8d225743b92508")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNameDescriptionList-request)))
  "Returns md5sum for a message object of type 'GetNameDescriptionList-request"
  "9eff00794274414fcb8d225743b92508")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNameDescriptionList-request>)))
  "Returns full string definition for message of type '<GetNameDescriptionList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNameDescriptionList-request)))
  "Returns full string definition for message of type 'GetNameDescriptionList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNameDescriptionList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNameDescriptionList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNameDescriptionList-request
))
;//! \htmlinclude GetNameDescriptionList-response.msg.html

(cl:defclass <GetNameDescriptionList-response> (roslisp-msg-protocol:ros-message)
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
   (name_list
    :reader name_list
    :initarg :name_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (description_list
    :reader description_list
    :initarg :description_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector niryo_robot_msgs-msg:BasicObject)
   :initform (cl:make-array 0 :element-type 'niryo_robot_msgs-msg:BasicObject :initial-element (cl:make-instance 'niryo_robot_msgs-msg:BasicObject))))
)

(cl:defclass GetNameDescriptionList-response (<GetNameDescriptionList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNameDescriptionList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNameDescriptionList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<GetNameDescriptionList-response> is deprecated: use niryo_robot_msgs-srv:GetNameDescriptionList-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetNameDescriptionList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:status-val is deprecated.  Use niryo_robot_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetNameDescriptionList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:message-val is deprecated.  Use niryo_robot_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'name_list-val :lambda-list '(m))
(cl:defmethod name_list-val ((m <GetNameDescriptionList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:name_list-val is deprecated.  Use niryo_robot_msgs-srv:name_list instead.")
  (name_list m))

(cl:ensure-generic-function 'description_list-val :lambda-list '(m))
(cl:defmethod description_list-val ((m <GetNameDescriptionList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:description_list-val is deprecated.  Use niryo_robot_msgs-srv:description_list instead.")
  (description_list m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <GetNameDescriptionList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:objects-val is deprecated.  Use niryo_robot_msgs-srv:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNameDescriptionList-response>) ostream)
  "Serializes a message object of type '<GetNameDescriptionList-response>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'name_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'description_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'description_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNameDescriptionList-response>) istream)
  "Deserializes a message object of type '<GetNameDescriptionList-response>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'description_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'description_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNameDescriptionList-response>)))
  "Returns string type for a service object of type '<GetNameDescriptionList-response>"
  "niryo_robot_msgs/GetNameDescriptionListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNameDescriptionList-response)))
  "Returns string type for a service object of type 'GetNameDescriptionList-response"
  "niryo_robot_msgs/GetNameDescriptionListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNameDescriptionList-response>)))
  "Returns md5sum for a message object of type '<GetNameDescriptionList-response>"
  "9eff00794274414fcb8d225743b92508")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNameDescriptionList-response)))
  "Returns md5sum for a message object of type 'GetNameDescriptionList-response"
  "9eff00794274414fcb8d225743b92508")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNameDescriptionList-response>)))
  "Returns full string definition for message of type '<GetNameDescriptionList-response>"
  (cl:format cl:nil "int32 status~%string message~%# this service embed both old and new way to structure the datas in order to stay compatible with NS1/2~%string[] name_list~%string[] description_list~%BasicObject[] objects~%~%================================================================================~%MSG: niryo_robot_msgs/BasicObject~%string name~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNameDescriptionList-response)))
  "Returns full string definition for message of type 'GetNameDescriptionList-response"
  (cl:format cl:nil "int32 status~%string message~%# this service embed both old and new way to structure the datas in order to stay compatible with NS1/2~%string[] name_list~%string[] description_list~%BasicObject[] objects~%~%================================================================================~%MSG: niryo_robot_msgs/BasicObject~%string name~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNameDescriptionList-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'description_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNameDescriptionList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNameDescriptionList-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':name_list (name_list msg))
    (cl:cons ':description_list (description_list msg))
    (cl:cons ':objects (objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNameDescriptionList)))
  'GetNameDescriptionList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNameDescriptionList)))
  'GetNameDescriptionList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNameDescriptionList)))
  "Returns string type for a service object of type '<GetNameDescriptionList>"
  "niryo_robot_msgs/GetNameDescriptionList")