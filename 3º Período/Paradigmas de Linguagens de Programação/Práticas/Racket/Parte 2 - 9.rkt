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
(define k-esimo
  (lambda (k par?)
    (if par?
        (* k 2)
        (+ 1 (* (- k 1) 2))
     )
   )
 )
;; usar (k-esimo k #t), com #t para k-esimo par e #f  para k-esimo impar
(display "O terceiro numero par = ") (k-esimo 3 #t)
(display "O terceiro numero impar = ") (k-esimo 3 #f)
