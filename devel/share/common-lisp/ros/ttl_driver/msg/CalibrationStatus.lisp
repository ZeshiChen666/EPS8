; Auto-generated. Do not edit!


(cl:in-package ttl_driver-msg)


;//! \htmlinclude CalibrationStatus.msg.html

(cl:defclass <CalibrationStatus> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (status
    :reader status
    :initarg :status
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass CalibrationStatus (<CalibrationStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ttl_driver-msg:<CalibrationStatus> is deprecated: use ttl_driver-msg:CalibrationStatus instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <CalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-msg:ids-val is deprecated.  Use ttl_driver-msg:ids instead.")
  (ids m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-msg:status-val is deprecated.  Use ttl_driver-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CalibrationStatus>)))
    "Constants for message type '<CalibrationStatus>"
  '((:CALIBRATING . 2)
    (:CALIBRATED . 4)
    (:CALIBRATION_ERROR . 8)
    (:UNKNOWN . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CalibrationStatus)))
    "Constants for message type 'CalibrationStatus"
  '((:CALIBRATING . 2)
    (:CALIBRATED . 4)
    (:CALIBRATION_ERROR . 8)
    (:UNKNOWN . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationStatus>) ostream)
  "Serializes a message object of type '<CalibrationStatus>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationStatus>) istream)
  "Deserializes a message object of type '<CalibrationStatus>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationStatus>)))
  "Returns string type for a message object of type '<CalibrationStatus>"
  "ttl_driver/CalibrationStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationStatus)))
  "Returns string type for a message object of type 'CalibrationStatus"
  "ttl_driver/CalibrationStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationStatus>)))
  "Returns md5sum for a message object of type '<CalibrationStatus>"
  "411b319c4c56574c009d28aed391efdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationStatus)))
  "Returns md5sum for a message object of type 'CalibrationStatus"
  "411b319c4c56574c009d28aed391efdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationStatus>)))
  "Returns full string definition for message of type '<CalibrationStatus>"
  (cl:format cl:nil "uint16 CALIBRATING = 2~%uint16 CALIBRATED = 4~%uint16 CALIBRATION_ERROR = 8~%uint16 UNKNOWN = 0~%~%uint16[] ids~%uint16[] status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationStatus)))
  "Returns full string definition for message of type 'CalibrationStatus"
  (cl:format cl:nil "uint16 CALIBRATING = 2~%uint16 CALIBRATED = 4~%uint16 CALIBRATION_ERROR = 8~%uint16 UNKNOWN = 0~%~%uint16[] ids~%uint16[] status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationStatus>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationStatus
    (cl:cons ':ids (ids msg))
    (cl:cons ':status (status msg))
))
