(require sicp)

(define rack (list 5 10 20))

(define (loading-ways weight plates)
(cond
   [(= weight 0) 0]
   [(or (= (length plates) 0) 
        (< weight 0)
        ) 0]
   [else (+ (loading-ways weight (cdr plates))
            (loading-ways (- weight (car plates)) plates))]
   ))  

(loading-ways 80 rack)
