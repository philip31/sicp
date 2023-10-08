(define (ordered? list)
    (define (are-ordered? x y)
        (<= x y))
    
    (if 
        (or 
            (empty? list)
            (empty? (bf list)))
        #t
        (if (are-ordered? (first list) (first (bf list)))
            (ordered? (bf list)) 
            #f)))