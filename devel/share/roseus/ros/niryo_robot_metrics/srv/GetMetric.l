;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_metrics::GetMetric)
  (if (not (find-package "NIRYO_ROBOT_METRICS"))
    (make-package "NIRYO_ROBOT_METRICS"))
  (shadow 'GetMetric (find-package "NIRYO_ROBOT_METRICS")))
(unless (find-package "NIRYO_ROBOT_METRICS::GETMETRIC")
  (make-package "NIRYO_ROBOT_METRICS::GETMETRIC"))
(unless (find-package "NIRYO_ROBOT_METRICS::GETMETRICREQUEST")
  (make-package "NIRYO_ROBOT_METRICS::GETMETRICREQUEST"))
(unless (find-package "NIRYO_ROBOT_METRICS::GETMETRICRESPONSE")
  (make-package "NIRYO_ROBOT_METRICS::GETMETRICRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_metrics::GetMetricRequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_metrics::GetMetricRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_metrics::GetMetricResponse
  :super ros::object
  :slots (_status _metric ))

(defmethod niryo_robot_metrics::GetMetricResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:metric __metric) (instance niryo_robot_metrics::Metric :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _metric __metric)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:metric
   (&rest __metric)
   (if (keywordp (car __metric))
       (send* _metric __metric)
     (progn
       (if __metric (setq _metric (car __metric)))
       _metric)))
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; niryo_robot_metrics/Metric _metric
    (send _metric :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; niryo_robot_metrics/Metric _metric
       (send _metric :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; niryo_robot_metrics/Metric _metric
     (send _metric :deserialize buf ptr-) (incf ptr- (send _metric :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_metrics::GetMetric
  :super ros::object
  :slots ())

(setf (get niryo_robot_metrics::GetMetric :md5sum-) "3c7e8f79bf57a60d05456cd506c553a8")
(setf (get niryo_robot_metrics::GetMetric :datatype-) "niryo_robot_metrics/GetMetric")
(setf (get niryo_robot_metrics::GetMetric :request) niryo_robot_metrics::GetMetricRequest)
(setf (get niryo_robot_metrics::GetMetric :response) niryo_robot_metrics::GetMetricResponse)

(defmethod niryo_robot_metrics::GetMetricRequest
  (:response () (instance niryo_robot_metrics::GetMetricResponse :init)))

(setf (get niryo_robot_metrics::GetMetricRequest :md5sum-) "3c7e8f79bf57a60d05456cd506c553a8")
(setf (get niryo_robot_metrics::GetMetricRequest :datatype-) "niryo_robot_metrics/GetMetricRequest")
(setf (get niryo_robot_metrics::GetMetricRequest :definition-)
      "string name
---
uint8 status
niryo_robot_metrics/Metric metric

================================================================================
MSG: niryo_robot_metrics/Metric
string name
string value
")

(setf (get niryo_robot_metrics::GetMetricResponse :md5sum-) "3c7e8f79bf57a60d05456cd506c553a8")
(setf (get niryo_robot_metrics::GetMetricResponse :datatype-) "niryo_robot_metrics/GetMetricResponse")
(setf (get niryo_robot_metrics::GetMetricResponse :definition-)
      "string name
---
uint8 status
niryo_robot_metrics/Metric metric

================================================================================
MSG: niryo_robot_metrics/Metric
string name
string value
")



(provide :niryo_robot_metrics/GetMetric "3c7e8f79bf57a60d05456cd506c553a8")


