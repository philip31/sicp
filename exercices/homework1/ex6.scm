(define (or-type)
    (define (loop)
        (loop))
    
    (if (or (= 0 0) (loop))
        'special
        'procedure)
    )