;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 02a-numeros) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introducao a Linguagem Racket (Scheme)
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Mariana Cossetti Dalfior
; ------------------------------------------------
(display "    UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "    Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "    Aluno:  Mariana Cossetti Dalfior ")
(newline)
; ------------------------------------------------
(newline)
(display "O valor de P = ")
(- (- 6 (/ (- (expt 8 2) (expt 4 3)) 6)) (+ 7 (- 2 (- (expt 3 4) 5))))
