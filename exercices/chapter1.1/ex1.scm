

(define (ex1)
    (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7))))

(define (ex3 a b c)
	(cond	((and (> a b) (> b c)) (+ (* a a) (* b b)))
		((and (> a c) (> c b)) (+ (* a a) (* c c)))
             	((and (> b a) (> c a)) (+ (* b b) (* c c)))))

(define ex1.4-comm "Operators can be used as expressions in if statement")
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))


(define ex1.5-comm "if it is applicative, it executes (p) first whose result is an infinite loop. if it is normal, it passes 0 and (p) to the if, and verify (= x 0) only.")

(define ex1.6-comm "it does not work because new-if is a function, not a special form. Because the interpreter is evaluating in aplicative order it will first evaluate the armunets. good-enough? will recall sqrt-iter si it will lead to a loop.")

(define ex1.7-comm "If we use very small numbers that are smaller than the precision limit the computation is not even made. If we use small precision, we will end up doing a lot of computation on big numbers (when using big numbers as input)")


(define (square x)
	(* x x))

(define (abs x)
	(cond ((> x 0) x)
		(else (- x))))

(define (average x y)
  	(/ (+ x y) 2))

(define (improve guess x)
	(average guess (/ x guess)))


(define (sqrt-iter guess x old-guess)
	(if (good-enough? guess old-guess)
		guess
		(sqrt-iter (improve guess x) x guess)))

(define (old-good-enough? guess x)
  	(< (abs (- (square guess) x)) 0.001))

(define (good-enough? guess old-guess)
	(and
		(< (abs (- (/ guess old-guess) 1)) 0.001)
		(not(= guess 1.0))))

(define (sqrt1 x)
	(sqrt-iter 1.0 x 1.0))


(define ex1.8-comm "nothing")

(define (newtown-formula x y)
	(/ (+ (/ x (square y)) (* y 2)) 3))

(define (cube-improve guess x)
	(newtown-formula x guess))

(define (cube-iter guess x old-guess)
	(if (cube-good-enough? guess old-guess)
		guess
		(cube-iter (cube-improve guess x) x guess)))

(define (cube-good-enough? guess old-guess)
	(and
		(< (abs (- (/ guess old-guess) 1)) 0.001)
		(not(= guess 1.0))))

(define (cube x)
	(cube-iter 1.0 x 1.0))