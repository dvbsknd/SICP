; Recursive solution to Ex. 1.11
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3)))
         )))

; Iterative solution to Ex. 1.11
(define (f n)
  (define (f-it a ; result of n-1
                b ; result of n-2
                c ; result of n-3
                count)
    (if (< count 3)
        a
        (f-it (+ a (* 2 b) (* 3 c)) ; new result
              a                     ; previous result of n-1, now n-2
              b                     ; previous result of n-2, now n-3 
              (- count 1)           ; decrement counter
              )
        )
    )
  (if (< n 3)
      n
      (f-it 2 1 0 n)
      )
  )

; Tests
(= (f 0) 0)
(= (f 1) 1)
(= (f 2) 2)
(= (f 3) 4)
(= (f 4) 11)
(= (f 5) 25)
(= (f 6) 59)
