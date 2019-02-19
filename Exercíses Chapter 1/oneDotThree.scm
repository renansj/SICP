(define (big x y)
  (if(> x y) x y)
)


(define (sumOfMax x y z)
  (cond ((and (> x y) (> x z)) (+ (big y z) x))
    ((and (> y x) (> y z)) (+ (big z x) y))
    (else (+ (big x y) z)))
)