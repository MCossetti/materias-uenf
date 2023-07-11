;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 04-areas) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Mariana Cossetti Dalfior

;;;;;;;;;;;;;;;;   Escolha a linguagem "Determine language from source"
;;
;;#lang racket      ;; define a linguagem default
; ------------------------------------------------

(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior ")
(newline)
(newline)
;;
;; (define   (nomeFuncao   parametros)  definicao  )
;;
;; AREAS
;; ---------------------------------------------------
(define (area-circulo r) 
  (* 3.14 (* r r))         )

(define (areatriangulo b h)
  (/ (* b h) 2))

(define (areadisco interno externo)
  (- (area-circulo externo)
     (area-circulo interno)
  )
)  
;--------------------------------------------------------------
(display "Circulo de raio 21   AREA = ")
(area-circulo 21)

(display "Triangulo base=10, altura=15  AREA =   ")
(areatriangulo 10 15)

(display "Disco raio menor=12, raio maior=20  AREA = ")
(areadisco 12 20)
