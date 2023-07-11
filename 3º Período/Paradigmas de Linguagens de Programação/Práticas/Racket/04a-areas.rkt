;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 04a-areas) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
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
(define (areaquadrado l)
  (expt l 2)
  )

(define (areatrapezio b B h)
  (/ (* (+ b B) h) 2)
  )

(define (areahexagono l) ;;escolhi o hexagono como poligono 
  (/ (* 3 (expt l 2) (sqrt 3)) 2)
  )
;--------------------------------------------------------------
(display "Quadrado lado = 3, AREA = ")
(areaquadrado 3)

(display "Trapezio base menor = 3, base maior = 5, altura = 2, AREA = ")
(areatrapezio 3 5 2)

(display "Hexagono lado = 7, AREA = ")
(areahexagono 7)
