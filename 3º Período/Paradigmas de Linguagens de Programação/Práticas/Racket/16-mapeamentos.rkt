;; Introducao a Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023 
;; Aluno: Mariana Cossetti Dalfior
#lang racket 
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mariana Cossetti Dalfior ")
(newline)
;; ---------------------------------------------------
;; Mapeamentos
; ------------------------------------------------
(define quadrado
  (lambda ( x ) (* x x)
  )
)  

(define dobro
  (lambda (y) (* 2 y)
  )
)  

(define proximo
  (lambda ( x ) (+ x 1)
  )
)  

(newline)
(define Lista (list  1 4 9 16 25))
(display "Lista:  ") Lista
(newline)
(display "Raiz Lista:  ") (map sqrt Lista) 

(newline)
(define dados '(2 5 6 23))
(display "Dados:  ") dados
(newline)

;;mapeamentos 
(display "Mapeamentos: Dados-Proximo  ") (newline)
(map proximo dados)

(display "Mapeamentos: Dados-Quadrado  ") (newline)
(map quadrado dados)

(display "Mapeamentos: Dados-Dobro  ") (newline)
(map dobro dados)
