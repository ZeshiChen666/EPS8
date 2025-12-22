;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_metrics::Metric)
  (if (not (find-package "NIRYO_ROBOT_METRICS"))
    (make-package "NIRYO_ROBOT_METRICS"))
  (shadow 'Metric (find-package "NIRYO_ROBOT_METRICS")))
(unless (find-package "NIRYO_ROBOT_METRICS::METRIC")
  (make-package "NIRYO_ROBOT_METRICS::METRIC"))

(in-package "ROS")
;;//! \htmlinclude Metric.msg.html


(defclass niryo_robot_metrics::Metric
  :super ros::object
  :slots (_name _value _unit ))

(defmethod niryo_robot_metrics::Metric
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) "")
    ((:unit __unit) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (string __value))
   (setq _unit (string __unit))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:unit
   (&optional __unit)
   (if __unit (setq _unit __unit)) _unit)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _value
    4 (length _value)
    ;; string _unit
    4 (length _unit)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;; string _unit
       (write-long (length _unit) s) (princ _unit s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get niryo_robot_metrics::Metric :md5sum-) "898aa783673b4282b5ca67c01b7159da")
(setf (get niryo_robot_metrics::Metric :datatype-) "niryo_robot_metrics/Metric")
(setf (get niryo_robot_metrics::Metric :definition-)
      "string name
string value
string unit
")



(provide :niryo_robot_metrics/Metric "898aa783673b4282b5ca67c01b7159da")


