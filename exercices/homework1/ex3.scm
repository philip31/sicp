
(define (switch phrase)
    (define (check-rest rest)
        (define (print w)
        (cond 
            ((equal? w 'I) 'you)
            ((equal? w 'you) 'me)
            ((equal? w 'me) 'you)
            (else w)))

        (if (empty? rest)
            ()
            (se (print (first rest)) (check-rest (bf rest)))))

    (if (empty? phrase)
        ()
        (se (if (equal? (first phrase) 'you) 'i (first phrase)) (check-rest (bf phrase)))))