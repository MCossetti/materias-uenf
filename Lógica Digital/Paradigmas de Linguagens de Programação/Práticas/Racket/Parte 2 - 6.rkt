;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Parte 2 - 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Mariana Cossetti Dalfior
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
(define lista5 (list 9 8 7 6 5))

(define pertence
  (lambda (elem lista5)
    (member? elem lista5)
   )
 )

(display "O numero 3 pertence a lista? ") (pertence 3 lista5)
(display "O numero 9 pertence a lista? ") (pertence 9 lista5)
