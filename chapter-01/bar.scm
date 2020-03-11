(define (loadways weight plates)
(cond
   [(= weight 0) 1]
   [(or (= (length plates) 0) 
        (< weight 0)
        ) 0]
   [else (+ (loadways weight (cdr plates))
            (loadways (- weight (car plates)) plates))]
   ))  

(define weight-rack (list 20 10 5))

(loadways 40 weight-rack)
