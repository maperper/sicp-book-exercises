#lang racket

(define (square x) (* x x))

(define (sum_squares x y ) ( + (square x) (square y))) 

(define (sum_larger_two_squares x y z)
  (cond ((and (<= x y) (<= x z)) (sum_squares y z)) 
        ((and (<= y x) (<= y z)) (sum_squares x z))
        (else  (sum_squares x y))
  )
)

(define (fun x y z)
 (sum_larger_two_squares x y z) 
)

(= (fun 10 10 10) (sum_squares 10 10))
(= (fun 1 10 10) (sum_squares 10 10))
(= (fun 10 1 10) (sum_squares 10 10))
(= (fun 10 10 1) (sum_squares 10 10))
(= (fun 1 10 100) (sum_squares 10 100))
(= (fun 1 100 10) (sum_squares 10 100))
(= (fun 10 1 100) (sum_squares 10 100))
(= (fun 10 100 1) (sum_squares 10 100))
(= (fun 100 10 1) (sum_squares 10 100))
(= (fun 100 1 10) (sum_squares 10 100))