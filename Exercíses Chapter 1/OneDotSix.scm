(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (square-root x)
  (sqrt-iter 1.0 x))

;When Alyssa try to compute square roots we will have a stack overflow, cause sqrt-iter is using 
;new-if that is a function, the functions evaluate all expressions in run time, then it will be calling itself endless times.