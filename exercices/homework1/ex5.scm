(define (ends-e phrase)
    (define (has-e? w)
        (equal? (last w) 'e))

    (if(empty? phrase)
        ()
        (se
            (if (has-e? (first phrase))
                (first phrase)
                ())
            (ends-e (bf phrase))
            )))