; Pascal's triangle
; ---
; The numbers at the edge of the triangle are all 1.
; The numbers inside the traingle are the sums of
; the two numbers above them.

(define (tripoint down across)
  (cond [(= down 1) 1]
        [(or (< down 1) (> across down)) 0]
        [(or (< across 2) (= across down)) 1]
        [else (+ (tripoint (- down 1) across)
                 (tripoint (- down 1) (- across 1)))]
                 ))

(tripoint 5 3)

(define (triline down)
  (define (buildline down across items)
    (if (= down across) 
        (cons 1 items)
        (buildline down (+ 1 across) (cons (tripoint down across) items))))
  (buildline down 1 '()))

(triline 6)


(define (triangle levels)
  (define (level-iter depth rows)
    (if (= depth 0)
        rows
        (level-iter (- depth 1) (cons (triline depth) rows))))
  (level-iter levels '()))

(triangle 6)
