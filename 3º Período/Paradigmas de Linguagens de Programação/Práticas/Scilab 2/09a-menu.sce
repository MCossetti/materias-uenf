// Prof. Ausberto S. Castro Vera  
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  SELECT-CASE ==================
clear; clc;
mprintf("UENF - Ciencia da Computacao\n");
printf("Aluno: Mariana Cossetti Dalfior - Campos %s \n\n", date());

a = input('Digite um número: ');
b = input('Digite outro número: ');
operacao = input('Digite o operador entre aspas simples: ');
resposta = 0;

select operacao
    case '+' then
        resposta = a + b;
    case '-' then
        resposta = a - b;
    case '*' then
        resposta = a * b;
    case '/' then
        resposta = a / b;
    else
        break
end;

printf("A resposta dessa operação é: %d\n", resposta);
