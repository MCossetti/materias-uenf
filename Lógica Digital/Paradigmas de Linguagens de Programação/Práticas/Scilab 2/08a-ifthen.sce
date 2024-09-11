// Prof. Ausberto S. Castro Vera 
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Programacao:  IF-THEN-ELSE ================

clc;
mprintf("\n UENF-CCT-LCMAT-Ciencia da Computacao\n");
printf(" Aluno: Mariana Cossetti Dalfior - Campos %s\n\n", date());

numero = input("Digite um número inteiro:");
rest = modulo(numero,2)

if rest==0 then
    printf('O número é par!');
else 
    printf('O número é ímpar!');
end
