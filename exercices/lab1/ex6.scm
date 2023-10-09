(define (sum-squares-largest x y z)
    (cond 
        ((and (< z y) (< z x)) (sum-squares x y))
        ((and (< x y) (< x z)) (sum-squares z y))
        ((and (< y z) (< y x)) (sum-squares z x))
        (else 'undefined)))

(define (sum-squares x y)
    (+ (square x) (square y)))

(define (square x)
    (* x x))