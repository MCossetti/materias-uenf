;; Introducao a Linguagem Racket (Scheme)
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Mariana Cossetti Dalfior
;;
#lang racket      ;; define a linguagem default
;; define a linguagem default: R5RS
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior ")
(newline)
; ------------------------------------------------
(define lista (list 10 9 8 7 6 5 4 3))
(define listanova (list 2 1))

(newline)
(display "Lista = ")
(display lista)
(newline)
(display "Primeiro elemento da lista = ")
(display (car lista))
(newline)
(display "Ultimo elemento da lista = ")
(display (car (reverse lista)))
(newline)
(display "Comprimento da lista = ")
(display (length lista))     
(newline)
(display "Nova lista = ")
(display (append lista listanova))  
