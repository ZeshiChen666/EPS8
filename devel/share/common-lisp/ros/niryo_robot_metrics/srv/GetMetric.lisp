; Auto-generated. Do not edit!


(cl:in-package niryo_robot_metrics-srv)


;//! \htmlinclude GetMetric-request.msg.html

(cl:defclass <GetMetric-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetMetric-request (<GetMetric-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMetric-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMetric-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_metrics-srv:<GetMetric-request> is deprecated: use niryo_robot_metrics-srv:GetMetric-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetMetric-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_metrics-srv:name-val is deprecated.  Use niryo_robot_metrics-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMetric-request>) ostream)
  "Serializes a message object of type '<GetMetric-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMetric-request>) istream)
  "Deserializes a message object of type '<GetMetric-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMetric-request>)))
  "Returns string type for a service object of type '<GetMetric-request>"
  "niryo_robot_metrics/GetMetricRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMetric-request)))
  "Returns string type for a service object of type 'GetMetric-request"
  "niryo_robot_metrics/GetMetricRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMetric-request>)))
  "Returns md5sum for a message object of type '<GetMetric-request>"
  "3c7e8f79bf57a60d05456cd506c553a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMetric-request)))
  "Returns md5sum for a message object of type 'GetMetric-request"
  "3c7e8f79bf57a60d05456cd506c553a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMetric-request>)))
  "Returns full string definition for message of type '<GetMetric-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMetric-request)))
  "Returns full string definition for message of type 'GetMetric-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMetric-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMetric-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMetric-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetMetric-response.msg.html

(cl:defclass <GetMetric-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (metric
    :reader metric
    :initarg :metric
    :type niryo_robot_metrics-msg:Metric
    :initform (cl:make-instance 'niryo_robot_metrics-msg:Metric)))
)

(cl:defclass GetMetric-response (<GetMetric-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMetric-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMetric-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_metrics-srv:<GetMetric-response> is deprecated: use niryo_robot_metrics-srv:GetMetric-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetMetric-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_metrics-srv:status-val is deprecated.  Use niryo_robot_metrics-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'metric-val :lambda-list '(m))
(cl:defmethod metric-val ((m <GetMetric-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_metrics-srv:metric-val is deprecated.  Use niryo_robot_metrics-srv:metric instead.")
  (metric m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMetric-response>) ostream)
  "Serializes a message object of type '<GetMetric-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'metric) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMetric-response>) istream)
  "Deserializes a message object of type '<GetMetric-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'metric) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMetric-response>)))
  "Returns string type for a service object of type '<GetMetric-response>"
  "niryo_robot_metrics/GetMetricResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMetric-response)))
  "Returns string type for a service object of type 'GetMetric-response"
  "niryo_robot_metrics/GetMetricResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMetric-response>)))
  "Returns md5sum for a message object of type '<GetMetric-response>"
  "3c7e8f79bf57a60d05456cd506c553a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMetric-response)))
  "Returns md5sum for a message object of type 'GetMetric-response"
  "3c7e8f79bf57a60d05456cd506c553a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMetric-response>)))
  "Returns full string definition for message of type '<GetMetric-response>"
  (cl:format cl:nil "uint8 status~%niryo_robot_metrics/Metric metric~%~%================================================================================~%MSG: niryo_robot_metrics/Metric~%string name~%string value~%string unit~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMetric-response)))
  "Returns full string definition for message of type 'GetMetric-response"
  (cl:format cl:nil "uint8 status~%niryo_robot_metrics/Metric metric~%~%================================================================================~%MSG: niryo_robot_metrics/Metric~%string name~%string value~%string unit~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMetric-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'metric))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMetric-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMetric-response
    (cl:cons ':status (status msg))
    (cl:cons ':metric (metric msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMetric)))
  'GetMetric-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMetric)))
  'GetMetric-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMetric)))
  "Returns string type for a service object of type '<GetMetric>"
  "niryo_robot_metrics/GetMetric")