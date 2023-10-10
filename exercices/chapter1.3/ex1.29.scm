(define (cube x)
    (* x x x))

(define (sum term a next b)
    (if (> a b)
        0
        (+  (term a)
            (sum term (next a) next b))))

(define (integral f a b dx)
    (define (add-dx x)
        (+ x dx))
    (* (sum f (+ a (/ dx 2.0)) add-dx b)
        dx))

(define (simpson f a b n)
    (define h (/ (- b a) n))

    (define (new-f k)
        (cond   ((or (= k 0) (= k n)) (f (+ a (* k h))))
                ((= (remainder k 2) 0) (* 2 (f (+ a (* k h)))))
                ((= (remainder k 2) 1) (* 4 (f (+ a (* k h)))))))

    (define (increment k)
        (+ k 1))

        (* (sum new-f 0 increment n)
            (/ h 3)))
