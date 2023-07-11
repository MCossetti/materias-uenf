;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 06a-condicionalIF) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
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
(define maiorvg
  (lambda (v g)
    (begin
      (if (> v g)
          (display "v maior que g")
          (display "g maior que v")
       )
     )
   )
 )

(define maiorrvg
  (lambda (r v g)
    (begin
      (if (> (/ r v) g)
          (display "r/v maior que g")
          (display "r/v menor que g")
       )
     )
   )
 )

(maiorvg 7 3)
(newline)
(maiorrvg 10 9 5)
