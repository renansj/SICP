(define (p) (p))

(define (test x y)
    (if (= x 0) 0 y))


;(p) is a recursive function, in applicative-order it will execute forever cause all the combinations will be evaluated before than the expression itself and,
; then in (test 0 (p)) using normal-order (p) will never be executed because it will return 0 without execute (p)