% pets.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Ano: 2023
% Aluno: Mariana Cossetti Dalfior
%-------------------------------------------------

%FATOS

cachorro(cat).
cachorro(bartolomeu).
cachorro(theodoro).
gato(miau).
gato(dog).
gato(tom).
calopsita(vasco).
calopsita(botafogo).
calopsita(florminiCe).
periquito(loro).
periquito(pipoca).
periquito(catatau).

dono(mariana).
dono(zehlu).
dono(vitor).

proprietario(mariana, cat).
proprietario(mariana, dog).
proprietario(mariana, pipoca).
proprietario(mariana, vasco).
proprietario(zehlu, bartolomeu).
proprietario(zehlu, miau).
proprietario(zehlu, loro).
proprietario(zehlu, botafogo).
proprietario(vitor, theodoro).
proprietario(vitor, tom).
proprietario(vitor, catatau).
proprietario(vitor, florminiCe).

%Regras

animalde(X, Y):- proprietario(Y, X).
