(define (dupls-removed list)
    (define (get-list remainder current-list)
        (if (empty? remainder)
            current-list
            (if (member? (first remainder) current-list)
                (get-list (bf remainder) current-list)
                (get-list (bf remainder) (se current-list (first remainder))))))
    (get-list list '()))