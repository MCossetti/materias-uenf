;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 03a-variaveis) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
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
; ------------------------------------------------
(newline)
(define y 5)		             ; para y=5
(define m 7)
(define z (+ m 6))	             ; para z = m+ 6
(define Pi 3.141516)
(define k (+ z (- m y)))

(define (quadrado x)            ; (define   (nomeFuncao   parametro)  definicao  )
    (* x x)  )

(define (entre7e18? n)
  (and (< 7 n) (< n 18) )               ;; AND logico
 )
;; ---------------------------------------------------
(newline)
(display "O numero 8 esta' entre 7 e 18? ")
(entre7e18? 8)

(newline)
(display "O numero 37 esta' entre 7 e 18? ")
(entre7e18? 37)

(newline)
(display "O valor de m = ") m
(display "O valor de z = ") z
(display "O valor de k = ") k
;; ---------------------------------------------------
(newline)
(let ((x 24))
  (+ x 6))

;;;
(let ( (a 5) (b 8))
  (+ 3 (* a b)))

;;;
(let ( (op1 +) 
       (op2 *) 
       (x 5)
     )
  (op1 3 (op2 4 x))
)

(display "O quadrado de 16 : ")(quadrado 16)
