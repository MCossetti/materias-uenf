% programa  animais.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Date: 2023
% Aluno: Mariana Cossetti Dalfior
%-------------------------------------------------

 % FATOS
 
pelo(pec).
pelo(pedroRaul).
pelo(rodrigo).
pelo(robsomBambu).
pelo(andrey).
pena(jair).
cauda(pec).
cauda(pedroRaul).
cauda(rodrigo).
cauda(robsomBambu).
late(rodrigo).
late(robsomBambu).
mia(pec).
mia(pedroRaul).
voa(jair).
naovoa(andrey).
oviparo(andrey).
oviparo(jair).
oviparo(coutinho).
oviparo(eguinaldo).
nada(coutinho).
nada(eguinaldo).

% REGRAS

gato(X):- pelo(X), cauda(X), mia(X).
cachorro(X):- pelo(X), cauda(X), late(X).
passarinho(X):- pena(X), voa(X), oviparo(X).
ornitorrinco(X):- pelo(X), oviparo(X), naovoa(X).
peixe(X):- oviparo(X), nada(X).

