;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023 
;; Aluno: Mariana Cossetti Dalfior
#lang racket 
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior ")
(newline)
;; ---------------------------------------------------
 (define eq
   (lambda (x)
     (- (+ (expt x 2) (* 3 x)) 9)
    )
  )

(define lista (list 9 8 7 6 5 4 3 2 1))
(newline)
(map eq lista)
