;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 08b-bhaskara) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Mariana Cossetti Dalfior
;;
;;#lang racket 
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior")
(newline)
;; ---------------------------------------------------
(newline)
(define (bhaskarapos a b c)
  (begin
    (display "O valor de x com Bhaskara utilizando o sinal '+' = ")
    (let ((delta (- (expt b 2) (* (* 4 a) c))))
       (if (< delta 0)
           (error "Nao foi possivel calcular, pois delta menor que 0")
           (/ (+ (- b) (sqrt delta)) (* 2 a))
       )
    )
  )
)

(define (bhaskarapneg a b c)
  (begin
    (display "O valor de x com Bhaskara utilizando o sinal '-' = ")
    (let ((delta (- (expt b 2) (* (* 4 a) c))))
       (if (< delta 0)
           (error "Nao foi possivel calcular, pois delta menor que 0")
           (/ (- (- b) (sqrt delta)) (* 2 a))
       )
    )
  )
)

(bhaskarapos 25 -55 10)
(newline)
(bhaskarapneg 25 -55 10)
