(define (ex3 a b c)
	(cond	((and (> a b) (> b c)) (+ (* a a) (* b b)))
		((and (> a c) (> c b)) (+ (* a a) (* c c)))
             	((and (> b a) (> c a)) (+ (* b b) (* c c)))))
