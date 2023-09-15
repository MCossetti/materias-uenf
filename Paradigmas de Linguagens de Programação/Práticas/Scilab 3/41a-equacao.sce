// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Equacoes (Aplicacoes) ==================

clear; clc;
Aluno = 'Mariana Cossetti Dalfior';

Eq = "     Ax + By = C";

itens=["A"; "B";"C"];

[ok,a,b,c]=getvalue(['UENF - Prof. Ausberto S. Castro V. - 2023';'Raízes da Equação: ';  Eq],...
                          itens,...
                          list("vec",1,"vec",1,"vec",1),...
                          ["";"";""]  );
delta = b*b - 4*a*c;

if (delta < 0) then
    messagebox('A equação não possui raízes reais...')
else
    messagebox(['Solução:';
                '       X1 = '+string((-b + sqrt(delta))/2*a);
                '       X2 = '+string((-b + sqrt(delta))/2*a)]);
end;
