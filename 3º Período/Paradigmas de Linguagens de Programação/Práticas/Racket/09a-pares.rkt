;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Mariana Cossetti Dalfior
;;
#lang racket 
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior")
(newline)
;; ---------------------------------------------------
(newline)
(define v (cons 'vasco 1))
(define g (cons 'gigante 10))
;; ---------------------------------------------------
(display "O par v = ")
v

(display "O par g = ")
g

;; ----------------Primeiro e resto ---------------------
(newline)
(display "O primeiro elemento do par v = ")   
(car v)               

(display "O segundo elemento do par v = ")
(cdr v)

(newline)
(display "O primeiro elemento do par g = ")   
(car g)               

(display "O segundo elemento do par g = ")
(cdr g)
