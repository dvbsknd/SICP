(define (factorial n)
  (if (= n 1) 1
      (* n (factorial (- n 1)))))

(factorial 3)

; First, multiply 1 * 2
; Then, multiply the product by 3
; Continue until you reach n
; Then, return the product

(define (factorial n)
  (fact-iter 1 1 n))

(define (fact-iter product counter limit)
  (if (> counter limit) 
      product
      (fact-iter (* product counter) (+ counter 1) limit)
      ))
