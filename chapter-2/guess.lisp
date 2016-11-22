(defun start_game (top bottom)
  (defparameter *top* top)
  (defparameter *bottom* bottom)
  (guess_number)
  )

(defun guess_number ()
  (ash (+ *top* *bottom*) -1))

(defun bigger ()
  (setf *top* (1+ (guess_number)))
  (guess_number)
  )

(defun smaller ()
  (setf *bottom* (1- (guess_number)))
  (guess_number)
  )
