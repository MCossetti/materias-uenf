% programa  02-familia-B.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Date: 2023
% Aluno: Mariana Cossetti Dalfior
%-------------------------------------------------
 % FATOS

    mulher(luisa). % significa luisa � uma mulher
    mulher(maria).
    mulher(eva).
    mulher(suzana).
    mulher(martha).
    homem(adam).
    homem(joao).
    homem(pedro).
    homem(paulo).
    marido(adam,eva).
    esposa(eva,adam).
    pai(joao,eva).
    pai(joao,martha).
    pai(adam,pedro). % significa adam � pai de pedro
    pai(adam,paulo).
    pai(adam,luisa).
    mae(eva,luisa).
    mae(eva,pedro).
    mae(eva,maria).
    mae(martha,suzana).

 % REGRAS

    filho(F,P) :- homem(F),pai(P,F).
    filho(F,M) :- homem(F),mae(M,F).
    
    filha(F,P) :- mulher(F),pai(P,F).
    filha(F,M) :- mulher(F),mae(M,F).

% Completar as regras:
    irma(X,Y) :- mulher(X),mae(Z,X),mae(Z,Y).
    irma(X,Y) :- mulher(X),pai(Z,X),pai(Z,Y).

    irmao(A,B) :- homem(A),mae(C,A),mae(C,B).
    irmao(A,B) :- homem(A),pai(C,A),pai(C,B).
    
    tia(A,B) :- irma(A,C),mae(C,B).
    tia(A,B) :- irma(A,C),pai(C,B).

    prima(A,B) :- mulher(A),mae(C,A),tia(C,B).

