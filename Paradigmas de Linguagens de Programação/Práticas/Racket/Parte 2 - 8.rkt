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
(define perQ
  (lambda (lado) 
    (* 4 lado) ;;; perimetro quadrado
   )
 )

(define perC
  (lambda (raio)
    (* (* pi 2) raio) ;;; perimetro circulo
   )
 )

(define perT
  (lambda (lado1 lado2 lado3)
    (+ lado1 (+ lado2 lado3)) ;;; perimetro triangulo
   )
 )

(display "O perimetro do quadrado de lado 5 = ") (perQ 5)
(display "O perimetro do circulo de raio 4 = ") (perC 4)
(display "O perimetro do triangulo de lados 6, 2 e 7 = ") (perT 6 2 7)
