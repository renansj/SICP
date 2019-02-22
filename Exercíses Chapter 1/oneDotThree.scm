(define (big x y)
  (if(> x y) x y)
)

(define (square x)
  (* x x)
)

(define (sumOfMax x y z)
  (cond ((and (> x y) (> x z)) (+ (square (big y z)) (square x)))
    ((and (> y x) (> y z)) (+ (square (big z x)) (square y)))
    (else (+ (square (big x y)) (square z))))
)