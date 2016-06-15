;;; Exercise 2.6.1
;infinite loop


;;; Exercise 2.6.2
(define compose
  (lambda (f g)
    (lambda (x)
      (f (g x)))))

(define cadr
  (lambda (x)
    ((compose car cdr) x)))

(define cddr
  (lambda (x)
    ((compose cdr cdr) x)))


;;; Exercise 2.6.3
;caar, cdar, caaar, caadr
(define caar
  (lambda (x)
    ((compose car car) x)))

(define cdar
  (lambda (x)
    ((compose cdr car) x)))

(define caaar
  (lambda (x)
    ((compose car (compose car car)) x)))

(define caadr
  (lambda (x)
    ((compose car (compose car cdr)) x)))
