// Prof. Ausberto S. Castro Vera 
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Programacao: FUNCOES ==================

clear; clc;
mprintf("UENF - Ciencia da Computacao\n");
printf("Aluno: Mariana Cossetti Dalfior - Campos %s \n\n", date());

function [s]=fibonacci(a)
    s1 = 0;
    s2 = 1;
    s = zeros(1, a);
    s(1) = s1;
    s(2) = s2;
    
    for n=3:a
        s(n)=s(n-1)+s(n-2);
    end
endfunction

n = input('Digite um número N: ');
fib = []
fib = fibonacci(n);

printf('A sequência dos N números é: \n')
for b = 1:n
    printf("%d\n", fib(b));
end
