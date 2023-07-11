// Prof. Ausberto S. Castro Vera 
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Programacao: FOR ==================

clear;clc;    
mprintf("UENF - Ciencia da Computacao\n");
printf("Aluno: Mariana Cossetti Dalfior - Campos %s \n\n", date());

N = input("Digite um número inteiro positivo para ser calculado o seu fatorial: ")

fat = 1
for i = 1:1:N
    fat = fat * i; 
end

printf("O fatorial é: %d\n", fat);
