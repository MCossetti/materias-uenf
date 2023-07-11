;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Abril 2023 
;; Aluno: Mariana Cossetti Dalfior
#lang racket 
; ------------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior")
(newline)
;; ---------------------------------------------------
(newline)
(define prest
  (lambda (valor taxa tempo)
    (display "O valor da prestacao = ")
    (display (+ valor (* valor (* (/ taxa 100) tempo))))
    (newline)
  )
 )

(prest 2000 4 12)
(prest 500 7 5)
(prest 750 10 3)
