#lang eopl

(define number-elements
  (lambda (lst)
    (if (null? lst) '()
        (g (list 0 (car lst)) (number-elements (cdr lst))))))

(define g
  (lambda (f r)
    (if (null? r) (list f)
        (cons f (g (cons (+ 1 (car (car r))) (cdr (car r))) (cdr r))))))
