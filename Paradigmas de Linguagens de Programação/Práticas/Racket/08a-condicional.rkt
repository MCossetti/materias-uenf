;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 08a-condicional) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
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
(define (altura tamanho) 
     (cond 
              ((<= tamanho 150)  "Muito baixo!") 
              ((<= tamanho 160)  "Baixo!") 
              ((<= tamanho 170)  "Na media!")
              ((<= tamanho 180)  "Alto!")
              ((<= tamanho 190)  "Muito alto!") 
              (else "Gigante")  
              )
  ) 
;;---------------------------------------------
(display "Seu tamanho de 146 cm = ")
(altura 146)
