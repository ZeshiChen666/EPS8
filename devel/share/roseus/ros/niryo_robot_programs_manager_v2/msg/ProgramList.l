;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager_v2::ProgramList)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
  (shadow 'ProgramList (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::PROGRAMLIST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::PROGRAMLIST"))

(in-package "ROS")
;;//! \htmlinclude ProgramList.msg.html


(defclass niryo_robot_programs_manager_v2::ProgramList
  :super ros::object
  :slots (_programs ))

(defmethod niryo_robot_programs_manager_v2::ProgramList
  (:init
   (&key
    ((:programs __programs) ())
    )
   (send-super :init)
   (setq _programs __programs)
   self)
  (:programs
   (&rest __programs)
   (if (keywordp (car __programs))
       (send* _programs __programs)
     (progn
       (if __programs (setq _programs (car __programs)))
       _programs)))
  (:serialization-length
   ()
   (+
    ;; niryo_robot_programs_manager_v2/Program[] _programs
    (apply #'+ (send-all _programs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_programs_manager_v2/Program[] _programs
     (write-long (length _programs) s)
     (dolist (elem _programs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_programs_manager_v2/Program[] _programs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _programs (let (r) (dotimes (i n) (push (instance niryo_robot_programs_manager_v2::Program :init) r)) r))
     (dolist (elem- _programs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get niryo_robot_programs_manager_v2::ProgramList :md5sum-) "a5a3eee4c3101d45b45d481eeb8521cf")
(setf (get niryo_robot_programs_manager_v2::ProgramList :datatype-) "niryo_robot_programs_manager_v2/ProgramList")
(setf (get niryo_robot_programs_manager_v2::ProgramList :definition-)
      "niryo_robot_programs_manager_v2/Program[] programs

================================================================================
MSG: niryo_robot_programs_manager_v2/Program
string program_id
string name
string description
bool has_blockly
string saved_at
string python_code
string blockly_code
")



(provide :niryo_robot_programs_manager_v2/ProgramList "a5a3eee4c3101d45b45d481eeb8521cf")


