(define (sqrter guess x)
  (if (good-enough? guess x)
      guess
      (sqrter (improve guess x) x )))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) .0001))

(define (sqrt x)
  (sqrter 1.0 x))
