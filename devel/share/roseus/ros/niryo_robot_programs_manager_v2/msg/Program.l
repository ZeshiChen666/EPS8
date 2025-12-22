;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager_v2::Program)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2"))
  (shadow 'Program (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::PROGRAM")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER_V2::PROGRAM"))

(in-package "ROS")
;;//! \htmlinclude Program.msg.html


(defclass niryo_robot_programs_manager_v2::Program
  :super ros::object
  :slots (_program_id _name _description _has_blockly _saved_at _python_code _blockly_code ))

(defmethod niryo_robot_programs_manager_v2::Program
  (:init
   (&key
    ((:program_id __program_id) "")
    ((:name __name) "")
    ((:description __description) "")
    ((:has_blockly __has_blockly) nil)
    ((:saved_at __saved_at) "")
    ((:python_code __python_code) "")
    ((:blockly_code __blockly_code) "")
    )
   (send-super :init)
   (setq _program_id (string __program_id))
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _has_blockly __has_blockly)
   (setq _saved_at (string __saved_at))
   (setq _python_code (string __python_code))
   (setq _blockly_code (string __blockly_code))
   self)
  (:program_id
   (&optional __program_id)
   (if __program_id (setq _program_id __program_id)) _program_id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:has_blockly
   (&optional (__has_blockly :null))
   (if (not (eq __has_blockly :null)) (setq _has_blockly __has_blockly)) _has_blockly)
  (:saved_at
   (&optional __saved_at)
   (if __saved_at (setq _saved_at __saved_at)) _saved_at)
  (:python_code
   (&optional __python_code)
   (if __python_code (setq _python_code __python_code)) _python_code)
  (:blockly_code
   (&optional __blockly_code)
   (if __blockly_code (setq _blockly_code __blockly_code)) _blockly_code)
  (:serialization-length
   ()
   (+
    ;; string _program_id
    4 (length _program_id)
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; bool _has_blockly
    1
    ;; string _saved_at
    4 (length _saved_at)
    ;; string _python_code
    4 (length _python_code)
    ;; string _blockly_code
    4 (length _blockly_code)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _program_id
       (write-long (length _program_id) s) (princ _program_id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; bool _has_blockly
       (if _has_blockly (write-byte -1 s) (write-byte 0 s))
     ;; string _saved_at
       (write-long (length _saved_at) s) (princ _saved_at s)
     ;; string _python_code
       (write-long (length _python_code) s) (princ _python_code s)
     ;; string _blockly_code
       (write-long (length _blockly_code) s) (princ _blockly_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _program_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _program_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _has_blockly
     (setq _has_blockly (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _saved_at
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _saved_at (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _python_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _python_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _blockly_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _blockly_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get niryo_robot_programs_manager_v2::Program :md5sum-) "02cd6606b088c8d3c241a7b018a0926f")
(setf (get niryo_robot_programs_manager_v2::Program :datatype-) "niryo_robot_programs_manager_v2/Program")
(setf (get niryo_robot_programs_manager_v2::Program :definition-)
      "string program_id
string name
string description
bool has_blockly
string saved_at
string python_code
string blockly_code
")



(provide :niryo_robot_programs_manager_v2/Program "02cd6606b088c8d3c241a7b018a0926f")


