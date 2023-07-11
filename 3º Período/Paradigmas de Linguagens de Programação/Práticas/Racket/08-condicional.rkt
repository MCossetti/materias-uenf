;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 08-condicional) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Abril 2023
;; Aluno: Mariana Cossetti Dalfior
;;
;;#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior ")
(newline)
;;
;;
;; CONDICIONAL   ( cond {[ ‹expr-test› ‹expr-eval›* ]}* )
;;---------------------------------------------

(define (taxa quantidade) 
     (cond 
              ((<= quantidade 1000)  0.040) 
              ((<= quantidade 8000)  0.065) 
              ((<= quantidade 12000) 0.072)
              (else 1)  
              )
  ) 
;;---------------------------------------------

(newline)
(display "Taxa para R$4.000,00 = ")
(taxa 4000)

(newline)
(display "Taxa para R$9.350,00 = ")
(taxa 9350)

(newline)
(display "Taxa para R$15.500,00 = ")
(taxa 15500)
