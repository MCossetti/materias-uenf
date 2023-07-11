;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Mariana Cossetti Dalfior
;;
#lang racket  
; ------------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior")
(newline)
; ------------------------------------------------
(newline)
(let ((c 9))
  (and (>= c 2) (< c 4)))

(let ((r 23))
  (and (equal? r 10) (equal? r 2)))

(let ((v 7))
  (or (not (equal? v 12)) (equal? v 6)))

(let ((g 98))
  (or (equal? g 5) (equal? g 98)))

(display " not(15 > 100) = ") (not (> 15 100))
