;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023 
;; Aluno:  Mariana Cossetti Dalfior
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
(display "Nome = ")
(define nome1 (read))
(display "Idade = ")
(define idade1 (read))
(display "Outro nome = ")
(define nome2 (read))
(display "Outra idade = ")
(define idade2 (read))
(newline)
(display "Nome: ") nome1
(display "Idadde ") idade1
(display "Nome: ") nome2
(display "Idade ") idade2
