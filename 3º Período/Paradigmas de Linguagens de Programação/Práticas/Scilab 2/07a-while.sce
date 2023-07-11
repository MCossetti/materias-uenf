// Prof. Ausberto S. Castro Vera 
//  Maio, 2023
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Programacao: WHILE 

clear; clc;
mprintf("UENF - Ciencia da Computacao\n");
printf("Aluno: Mariana Cossetti Dalfior - Campos %s \n\n", date());

K = input("Digite um valor para o limite: ")

N = 0;
soma = 0;

while (K >= soma) do
    N = N+1;
    soma = soma + N;
end

printf("O menor numero inteiro positivo N cujo a soma e menor ou igual ao limite K: %d \n", N-1)
