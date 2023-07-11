;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Mariana Cossetti Dalfior
#lang racket
; --------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior")
(newline)
; --------------------------------------------
(newline)
(define lista (list 10 15 12 2 99))
(define listaA (list 9 8 7 6 5))
(define listaB (list 0 1 2 3 4))

(display "Terceiro elemento da lista no final da lista A = ")
(set! listaA (append listaA (list (list-ref lista 2))))
listaA

(display "Terceiro elemento da lista no inicio da lista B = ")
(set! listaB (cons (list-ref lista 2) listaB))
listaB
