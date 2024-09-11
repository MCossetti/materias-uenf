;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 17a-raizes-poly) (read-case-sensitive #t) (teachpacks ((lib "gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "gui.rkt" "teachpack" "htdp")) #f)))
;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023 
;; Aluno: Mariana Cossetti Dalfior
; ------------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior")
(newline)
;;  Aplicações:  raizes do polinomio Ax^2 + Bx + C = 0
;; ---------------------------------------------------
(define (poly2grau a b c)
  (cond 
    [(= a 0) "Degenerada" ]
    [(< (* b b) 
        (* 4 a c)) 
     "Nenhuma Ou Complexa" ]
    [(= (* b b) 
        (* 4 a c)) 
     (/ (- b) (* 2 a))]
    [(> (* b b) 
        (* 4 a c)) 
     (list (/ (+ (- b) 
                 (sqrt (- (* b b) (* 4 a c)))) 
              (* 2 a)) 
           (/ (- (- b) 
                 (sqrt (- (* b b) (* 4 a c)))) 
              (* 2 a)))])) 
;;--------------------------------------
(newline)
(display "2X^2 + 4X + 2 = 0 , Raizes = ")
(poly2grau 2 4 2) 
(newline)

(display "6X + 12 = 0 , Raizes = ")
(poly2grau 0 6 12) 
(newline)

(display "5X^2 + X - 6 = 0 , Raizes = ")
(poly2grau 5 1 -6) 
(newline)

(display "3X^2 -2 = 0 , Raizes = ")
(poly2grau 3 0 -2) 
(newline)

(display "4X^2 +8X +6 = 0 , Raizes = ")
(poly2grau 4 8 6) 
