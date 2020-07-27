;; Recursive fizzbuzz implementation

;; This language really fucks with my brain
;; and I'm pretty sure this program is badly written...

(defun fizzbuzz (n lim)
    (if (< n lim)
        (progn
            (if (and (eq (mod n 3) 0) (eq (mod n 5) 0))
                (format t "FizzBuzz~%")
                (progn
                    (if (eq (mod n 3) 0)
                        (format t "Fizz~%")
                        (progn
                            (if (eq (mod n 5) 0)
                                (format t "Buzz~%")
                                (format t "~D~%" n))))))

            (fizzbuzz (+ n 1) lim))

        (format t "~D~%" n))) ; If n == lim, then we're done

(fizzbuzz 1 100)
