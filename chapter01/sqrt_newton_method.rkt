#lang racket

(define (average x y)
  (/ (+ x y) 2))

(define (abs x)
  (if (>= x 0) x (- 0 x)))

(define (square x)
  (* x x))

(define (sqrt x) 
  (sqrt_iter 1.0 x))

(define (sqrt_iter guess x)
  (if (is_good_enough guess x)
      guess
      (sqrt_iter (improve guess x) x)))

(define (is_good_enough guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(sqrt 2)