;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Q1_Evaluation) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (foo x)
  (local [(define (bar y) (+ x y))]
    (+ x (bar (* 2 x)))))

(list (foo 2) (foo 3))

;;1.Rename
;;change (foo 2)
(list (local [(define (bar y) (+ 2 y))]
        (+ 2 (bar (* 2 2))))
      (foo 3))


;;2.List Definition to top level
(define (bar_0 y) (+ 2 y))

(list (+ 2 (bar_0 (* 2 2)))
      (foo 3))


;;3.Replace local with body
(define (bar_0 y) (+ 2 y))

(list (+ 2 (bar_0 4))
      (foo 3))


;;Final
(define (bar_0 y) (+ 2 y))

(list (+ 2 (+ 2 4)) (foo 3))


;;One step at a time !!

