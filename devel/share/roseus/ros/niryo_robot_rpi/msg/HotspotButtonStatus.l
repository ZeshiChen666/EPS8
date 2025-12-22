;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::HotspotButtonStatus)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'HotspotButtonStatus (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS")
  (make-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude HotspotButtonStatus.msg.html


(intern "*SHORT_PRESS*" (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(shadow '*SHORT_PRESS* (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(defconstant niryo_robot_rpi::HotspotButtonStatus::*SHORT_PRESS* 1)
(intern "*LONG_PRESS*" (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(shadow '*LONG_PRESS* (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(defconstant niryo_robot_rpi::HotspotButtonStatus::*LONG_PRESS* 2)
(intern "*VERY_LONG_PRESS*" (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(shadow '*VERY_LONG_PRESS* (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(defconstant niryo_robot_rpi::HotspotButtonStatus::*VERY_LONG_PRESS* 3)
(intern "*IGNORE_PRESS*" (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(shadow '*IGNORE_PRESS* (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(defconstant niryo_robot_rpi::HotspotButtonStatus::*IGNORE_PRESS* 4)
(intern "*PRESSED*" (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(shadow '*PRESSED* (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(defconstant niryo_robot_rpi::HotspotButtonStatus::*PRESSED* 0)
(intern "*RELEASED*" (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(shadow '*RELEASED* (find-package "NIRYO_ROBOT_RPI::HOTSPOTBUTTONSTATUS"))
(defconstant niryo_robot_rpi::HotspotButtonStatus::*RELEASED* 1)

(defun niryo_robot_rpi::HotspotButtonStatus-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_rpi::HotspotButtonStatus::*SHORT_PRESS*)
        ((= const 2) 'niryo_robot_rpi::HotspotButtonStatus::*LONG_PRESS*)
        ((= const 3) 'niryo_robot_rpi::HotspotButtonStatus::*VERY_LONG_PRESS*)
        ((= const 4) 'niryo_robot_rpi::HotspotButtonStatus::*IGNORE_PRESS*)
        ((= const 0) 'niryo_robot_rpi::HotspotButtonStatus::*PRESSED*)
        ((= const 1) 'niryo_robot_rpi::HotspotButtonStatus::*RELEASED*)
        (t nil)))

(defclass niryo_robot_rpi::HotspotButtonStatus
  :super ros::object
  :slots (_mode _state ))

(defmethod niryo_robot_rpi::HotspotButtonStatus
  (:init
   (&key
    ((:mode __mode) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _state (round __state))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int8 _mode
    1
    ;; int8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mode
       (write-byte _mode s)
     ;; int8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;;
   self)
  )

(setf (get niryo_robot_rpi::HotspotButtonStatus :md5sum-) "b0e70f855953624e078a0ffee0bd4e2c")
(setf (get niryo_robot_rpi::HotspotButtonStatus :datatype-) "niryo_robot_rpi/HotspotButtonStatus")
(setf (get niryo_robot_rpi::HotspotButtonStatus :definition-)
      "int8 SHORT_PRESS = 1
int8 LONG_PRESS = 2
int8 VERY_LONG_PRESS = 3
int8 IGNORE_PRESS = 4
int8 mode

int8 PRESSED = 0
int8 RELEASED = 1
int8 state

")



(provide :niryo_robot_rpi/HotspotButtonStatus "b0e70f855953624e078a0ffee0bd4e2c")


