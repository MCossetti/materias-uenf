// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: GRAFICOS V ==================

clear; clc;
Aluno = 'Mariana Cossetti Dalfior';  // <============ Nome do aluno

// propriedades da figura: NÃO alterar !!
dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;

// propriedades da figura
a=gcf();
a.figure_name='UENF -  Maio 2023 - '+ Aluno + dd;  ;

t=[-50:50]';  // vetor de pontos no eixo X
f= 4*t+15;                         // primeira função
g= t^3+8;         // segunda função


plot2d(t , [f g]);
legends(['f = 4t+15';'g=4t³+8'],[1 2],opt="ur"); // ul, ll,lr

da=gca(); // 
da.title.font_size = 5;
da.title.font_foreground = 5;    // 5=vermelho
da.title.text="Gráficos de f = 4t+15  e   g = t³+8";
da.x_label.text="Tempo"; 
da.data_bounds=[0, 0; 5,30] // valores Max-min permitidos na visualização do grafico
