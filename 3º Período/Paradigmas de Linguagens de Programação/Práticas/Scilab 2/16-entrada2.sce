// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: Programacao: Formulario de Entrada de dados ==================

clear; clc;
Aluno = 'Mariana Cossetti Dalfior';  // <============ Nome do aluno


txt=['Preço 1';'Preço 2';'Preço 3 ' ;'Preço 4';'Desconto (%)']; 
info=x_mdialog([Aluno;'Inserir os preços dos produtos: '],txt,['';'';'';'';'']); 

p1=evstr(info(1));   // strings convertidos em numeros
p2=evstr(info(2)); 
p3=evstr(info(3)); 
p4=evstr(info(4)); 
p5=evstr(info(5)); 

pf = (p1+p2+p3+p4)*(1-(p5/100));

messagebox('O preço final após o desconto: '+string(pf), "UENF - "+Aluno);


