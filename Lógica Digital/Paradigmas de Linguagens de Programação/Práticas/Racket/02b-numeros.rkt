;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 02b-numeros) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
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
(display "    Aluno:  Mariana Cossetti Dalfior")
(newline)
; ------------------------------------------------
(display "O valor da expressão = ")
(/ (sqrt (+ (expt 5 2) 6 (sin (- 12 8)) (cos (+ 20 25)))) (* (- 5 3) (expt (+ 4 8) 2)))
;; #i significa "inexato"
