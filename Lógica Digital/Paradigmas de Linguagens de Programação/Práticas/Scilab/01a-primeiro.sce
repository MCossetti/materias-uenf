// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023
//
// Para executar desde o editor SciNotes:   < Ctrl >< L >
//
// ======> Assunto:   Primeiro programa - Comandos Basicos

clc;        // limpa a Janela de comandos
clear;      //  remove (limpa) as variaveis do ambiente (memoria)

mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(' Aluno: Mariana Cossetti Dalfior\n\n');

// Atribuicao23245


x = 42        // SEM ponto e virgula: mostrar o resultado

y = 25;       // COM ponto e vírgula, NAO mostrar o resultado

z = [ 7 8 9 10]                    // vetor

w = [ 10 9 8 7; 6 5 4 3; 2 1 0 -1]      // matriz

s = 'Vasco da Gama'                     // string

// Vetores23


v1 = 50:60

v2 = 1:2:15

v3 = 0.2:0.9:5.0


Time=input(" Qual e o nome do time que voce torce?  : ","string")
printf('\n\nO nome do time que voce torce : %s',Time);
