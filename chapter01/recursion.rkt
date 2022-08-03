#lang racket

(define (factorial n)
  (if (= n 1) 1 (* n (factorial (- n 1)))))

(define (fibonacci n)
  (cond ((= n 1) 0) ((= n 2) 1) (else (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))


(define (sum_of_squares n)
  (if (= n 0) 0 (+ (* n n) (sum_of_squares (- n 1)))))

(fibonacci 7)
 
(factorial 5)

(sum_of_squares 5)