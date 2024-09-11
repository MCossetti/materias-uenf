% Programa casa.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Ano: 2023
% Aluno: Mariana Cossetti Dalfior
%-------------------------------------------------
%    Ver mapa da casa
%
%------------- FATOS  -----------------------
lugar(sala).
lugar(cozinha).
lugar(escritorio).
lugar(corredor).
lugar('sala de jantar').
lugar(celeiro).
lugar(jardim).
lugar(quarto).
lugar(banheiro).
lugar(garagem).

porta(escritorio, corredor).
porta(celeiro, garagem).
porta(cozinha, escritorio).
porta(cozinha, celeiro).
porta(corredor, quarto).
porta(corredor, 'sala de jantar').
porta(quarto, banheiro).
porta('sala de jantar', banheiro).
porta('sala de jantar', cozinha).

localizacao(cama, quarto).
localizacao(guarda-roupas, quarto).
localizacao(coberta, quarto).
localizacao(travesseiro, quarto).
localizacao(chuveiro, banheiro).
localizacao('toalha de banho', banheiro).
localizacao(espelho, banheiro).
localizacao(sabonete, banheiro).
localizacao(carro, garagem).
localizacao('caixa de ferramentas', garagem).
localizacao(moto, garagem).
localizacao(bicicleta, garagem).
localizacao(escrivaninha, escritorio).
localizacao(computador, escritorio).
localizacao(lanterna, escrivaninha).
localizacao(laranja, cozinha).
localizacao(verdura, cozinha).
localizacao(faca, cozinha).
localizacao(panela, cozinha).
localizacao(arroz, cozinha).
localizacao(uva, cozinha).
localizacao(biscoitos, cozinha).
localizacao('maq de lavar', celeiro).
localizacao(sabao, 'maq de lavar').
localizacao(mesa,'sala de jantar').

comestivel(laranja).
comestivel(biscoitos).
comestivel(arroz).
comestivel(uva).

gosto_amargo(verdura).

estamos_em('sala de jantar').

%%---------------  REGRAS --------------------
conectar(X,Y) :- porta(X,Y).
conectar(X,Y) :- porta(Y,X).

lista_coisas(Lugar) :-
           localizacao(X, Lugar),
           tab(2),
           write(X),
           nl,
           fail.
           lista_coisas(Nestelugar).
           
lista_portas(Lugar) :-
           conectar(Lugar, X),
           tab(2),
           write(X),
           nl,
           fail.
           lista_portas(_).
           
observar :- estamos_em(Lugar),
            write('Voce esta na '), write(Lugar), nl,
            write('Voce pode ver:'), nl,
            lista_coisas(Lugar),
            write('Voce pode ir para:'), nl,
            lista_portas(Lugar).

  
mover(Lugar):- retract(estamos_em(X)), asserta(estamos_em(Lugar)).

posso_ir(Lugar):- estamos_em(X), conectar(X, Lugar).
posso_ir(Lugar):- write('Voce nao pode ir de aqui para '), write(Lugar), nl, fail.

goto(Lugar):- posso_ir(Lugar), mover(Lugar), observar.

estou(Lugar):- estamos_em(Lugar),
              write('Coisas observadas:'), nl,
              lista_coisas(Lugar),
              write('Voce pode ir para:'), nl,
              lista_portas(Lugar).

comer(Y):- lugar(cozinha), comestivel(Y).

objeto(T,R):- porta(cozinha, R), localizacao(T,R).
