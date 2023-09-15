% programa  genealogia.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Date: 2023
% Aluno: Mariana Cossetti Dalfior
%-------------------------------------------------
 % FATOS
 
    mulher(mariana).
    mulher(juliana).
    mulher(joana).
    mulher(arlita).
    mulher(iracy).
    mulher(fabiana).
    mulher(luciana).
    mulher(rosangela).
    mulher(marise).
    mulher(bianca).
    homem(guilherme).
    homem(everaldo).
    homem(joao).
    homem(tercilio).
    homem(ricardo).
    homem(emerson).
    pai(tercilio,everaldo).
    pai(tercilio,marise).
    pai(tercilio,rosangela).
    pai(joao,juliana).
    pai(joao,fabiana).
    pai(joao,luciana).
    pai(joao,ricardo).
    pai(joao,emerson).
    pai(everaldo,mariana).
    pai(everaldo,joana).
    mae(fabiana,guilherme).
    mae(fabiana,bianca).
    mae(arlita,juliana).
    mae(arlita,fabiana).
    mae(arlita,luciana).
    mae(arlita,ricardo).
    mae(arlita,emerson).
    mae(iracy, everaldo).
    mae(iracy, marise).
    mae(iracy, rosangela).
    mae(juliana,mariana).
    mae(juliana,joana).
    casal(tercilio,iracy).
    casal(everaldo,juliana).
    casal(joao,arlita).

 % REGRAS
    
    filho(F,P):-homem(F),pai(P,F).
    filho(F,M):-homem(F),mae(M,F).
    filha(F,P):-mulher(F),pai(P,F).
    filha(F,M):-mulher(F),mae(M,F).

    irmao(X, Y):- filho(X, Z), filho(Y, Z), X \= Y.
    irmao(X, Y):- filho(X, Z), filha(Y, Z), X \= Y.
    irma(X, Y):- filha(X, Z), filho(Y, Z), X \= Y.
    irma(X, Y):- filha(X, Z), filha(Y, Z), X \= Y.

    tio(X, Y):- irmao(X, Z), filho(Y, Z).
    tio(X, Y):- irmao(X, Z), filha(Y, Z).
    tio(X, Y):- homem(X), casal(X, Z), irma(Z, W), filho(Y, W).
    tio(X, Y):- homem(X), casal(X, Z), irma(Z, W), filha(Y, W).

    tia(X, Y):- irma(X, Z), filho(Y, Z).
    tia(X, Y):- irma(X, Z), filha(Y, Z).
    tia(X, Y):- mulher(X), casal(Z, X), irmao(Z, W), filho(Y, W).
    tia(X, Y):- mulher(X), casal(Z, X), irmao(Z, W), filha(Y, W).

    primo(X, Y):- tio(Z, Y), filho(X, Z).
    prima(X, Y):- tio(Z, Y), filha(X, Z).
    primo(X, Y):- tia(Z, Y), filho(X, Z).
    prima(X, Y):- tia(Z, Y), filha(X, Z).

    avoH(X, Y):- homem(X), filho(Z, X), filho(Y, Z).
    avoH(X, Y):- homem(X), filha(Z, X), filho(Y, Z).
    avoH(X, Y):- homem(X), filha(Z, X), filha(Y, Z).
    avoH(X, Y):- homem(X), filho(Z, X), filha(Y, Z).

    avoM(X, Y):- mulher(X), filho(Z, X), filho(Y, Z).
    avoM(X, Y):- mulher(X), filha(Z, X), filho(Y, Z).
    avoM(X, Y):- mulher(X), filha(Z, X), filha(Y, Z).
    avoM(X, Y):- mulher(X), filho(Z, X), filha(Y, Z).
