// Prof. Ausberto S. Castro Vera 
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Programacao: FOR ==================

clear;clc;    
mprintf("UENF - Ciencia da Computacao\n");
printf(" Aluno: Mariana Cossetti Dalfior - Campos %s\n", date());

printf("\nPara a soma de N numeros inteiros consecutivos a partir de X. \n")
X = input("Digite um valor para X: ")
N = input("Digite um valor para N:")

soma = 0
for i = X:(X - 1 + N)
    soma = soma + i; //impede que sejam mostrados na tela
end

printf("A soma é: %d \n", soma)
