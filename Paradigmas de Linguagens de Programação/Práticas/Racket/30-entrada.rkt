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
(display "Escreva QUATRO notas (numeros menores que 10, separados por espaços a  b  c d) : ")
(newline)
(define a (read))
(define b (read))
(define c (read))
(define d (read))

(define media
  (lambda (x y z w)
  (/ (+ (+ (+ x y) z) w) 4)
    ))

(display "A media = ")
(media a b c d)

(if (> (media a b c d) 5)
    (display "Aprovado")
    (display "Reprovado"))
;;--------------------------------------------
;; Defina aqui una media com notas com pesos diferentes
;
; (define MediaPesos ...............
