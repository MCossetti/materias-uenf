;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 05-funcoes) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Mariana Cossetti Dalfior

;;;;;;;;;;;;;;;;   Escolha a linguagem R5RS
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
;; DEFINICAO DE FUNCOES-procedimentos  usando lambda
;;       (define  NomeFuncao  (lambda  ( parametros )  (definicao) )  ) 
;;---------------------------------------------------

;;--------------------------------------
;; Procedimento (lambda ParametrosFormais Corpo)
(define ADICIONA
      (lambda  (a  b)           ; parametros formais
        (+ a b )                ; corpo do procedimento ADICIONA
       )
)  
;;--------------------------------------
;;
;;
(define soma
  (lambda (x y) 
    (begin
      (newline)
      (display "A soma de ")
      (display x)
       (display " e ")
       (display y)
       (display " = ")
      (+ x y)
     )
   )
)
;;---------------------------------------------
(define produto
  (lambda (x y) 
    (begin
      (newline)
      (display "O produto de ") (display x) (display " e ") (display y)
      (display " = ")
      (* x y)
     )
   )
)
;;---------------------------------------------
(define divisao
  (lambda (x y) 
    (begin
      (newline)
      (display "A divisao ") (display x) (display "/") (display y)(display " = ")
      (/ x y)
     )
   )
)
;;---------------------------------------------
(define diferenca
  (lambda (x y) 
    (begin
      (newline)
      (display "A diferenca ") (display x) (display "-") (display y)(display " = ")
      (- x y)
     )
   )
)
;;---------------------------------------------
(define quadrado
     (lambda (a)
       (begin
       (newline)
       (display "O quadrado de ") (display a) (display " = ")
       (* a a)
      )
   )
)
;;---------------------------------------------

;;----------- Executando funcoes --------------

(ADICIONA 25 15)
(ADICIONA 30 40)

(soma 45 32)
(produto 21 15)
(divisao 420 7)
(diferenca 89 35)
(quadrado 09)
