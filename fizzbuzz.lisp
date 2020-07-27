; Very simple FizzBuzz in Common Lisp
(loop for i from 1 to 100 do
    (cond
        ((eq (mod i 15) 0) (format t "FizzBuzz~%"))
        ((eq (mod i 5) 0)  (format t "Buzz~%"))
        ((eq (mod i 3) 0)  (format t "Fizz~%"))
        (t                 (format t "~D~%" i))))
