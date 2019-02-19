(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

The procedure verify if b is greather than zero, if it's greather return plus sign, otherwise return minus sign.
It will always return absolute values