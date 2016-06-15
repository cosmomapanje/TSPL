;;; Exercise 2.8.1
;;; Exercise 2.8.2
;;; Exercise 2.8.3
(define make-list
  (lambda (x s)
    (cond ((zero? x) '())
          (else
           (cons s (make-list (- x 1) s))))))


;;; Exercise 2.8.4
;;; Exercise 2.8.5
;;; Exercise 2.8.6
(define even?
  (lambda (n)
    (cond ((zero? n) #t)
          ((eqv? 1 n) #f)
          (else
           (odd? (- n 2))))))

(define odd?
  (lambda (n)
    (cond ((zero? n) #f)
          ((eqv? 1 n) #t)
          (else
           (even? (- n 2))))))
