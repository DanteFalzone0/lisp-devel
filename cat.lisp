;; Very rudimentary implementation of the Unix cat utility
(defun main ()
    (if (eq *args* nil)
        (loop for input-line = (read-line)
              until (eq input-line :eof)
              do (format t "~a~%" input-line))
        (let ((in (open (car *args*) :if-does-not-exist :error)))
            (when in
                (loop for line = (read-line in nil)
                    while line do (format t "~a~%" line))
                (close in)))))

(main)
