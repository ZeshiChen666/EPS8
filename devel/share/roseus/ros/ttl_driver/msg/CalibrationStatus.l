;; Auto-generated. Do not edit!


(when (boundp 'ttl_driver::CalibrationStatus)
  (if (not (find-package "TTL_DRIVER"))
    (make-package "TTL_DRIVER"))
  (shadow 'CalibrationStatus (find-package "TTL_DRIVER")))
(unless (find-package "TTL_DRIVER::CALIBRATIONSTATUS")
  (make-package "TTL_DRIVER::CALIBRATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CalibrationStatus.msg.html


(intern "*CALIBRATING*" (find-package "TTL_DRIVER::CALIBRATIONSTATUS"))
(shadow '*CALIBRATING* (find-package "TTL_DRIVER::CALIBRATIONSTATUS"))
(defconstant ttl_driver::CalibrationStatus::*CALIBRATING* 2)
(intern "*CALIBRATED*" (find-package "TTL_DRIVER::CALIBRATIONSTATUS"))
(shadow '*CALIBRATED* (find-package "TTL_DRIVER::CALIBRATIONSTATUS"))
(defconstant ttl_driver::CalibrationStatus::*CALIBRATED* 4)
(intern "*CALIBRATION_ERROR*" (find-package "TTL_DRIVER::CALIBRATIONSTATUS"))
(shadow '*CALIBRATION_ERROR* (find-package "TTL_DRIVER::CALIBRATIONSTATUS"))
(defconstant ttl_driver::CalibrationStatus::*CALIBRATION_ERROR* 8)
(intern "*UNKNOWN*" (find-package "TTL_DRIVER::CALIBRATIONSTATUS"))
(shadow '*UNKNOWN* (find-package "TTL_DRIVER::CALIBRATIONSTATUS"))
(defconstant ttl_driver::CalibrationStatus::*UNKNOWN* 0)

(defun ttl_driver::CalibrationStatus-to-symbol (const)
  (cond
        ((= const 2) 'ttl_driver::CalibrationStatus::*CALIBRATING*)
        ((= const 4) 'ttl_driver::CalibrationStatus::*CALIBRATED*)
        ((= const 8) 'ttl_driver::CalibrationStatus::*CALIBRATION_ERROR*)
        ((= const 0) 'ttl_driver::CalibrationStatus::*UNKNOWN*)
        (t nil)))

(defclass ttl_driver::CalibrationStatus
  :super ros::object
  :slots (_ids _status ))

(defmethod ttl_driver::CalibrationStatus
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:status __status) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _status __status)
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint16[] _ids
    (* 2    (length _ids)) 4
    ;; uint16[] _status
    (* 2    (length _status)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-word (elt _ids i) s)
       )
     ;; uint16[] _status
     (write-long (length _status) s)
     (dotimes (i (length _status))
       (write-word (elt _status i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _status i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get ttl_driver::CalibrationStatus :md5sum-) "411b319c4c56574c009d28aed391efdd")
(setf (get ttl_driver::CalibrationStatus :datatype-) "ttl_driver/CalibrationStatus")
(setf (get ttl_driver::CalibrationStatus :definition-)
      "uint16 CALIBRATING = 2
uint16 CALIBRATED = 4
uint16 CALIBRATION_ERROR = 8
uint16 UNKNOWN = 0

uint16[] ids
uint16[] status

")



(provide :ttl_driver/CalibrationStatus "411b319c4c56574c009d28aed391efdd")


