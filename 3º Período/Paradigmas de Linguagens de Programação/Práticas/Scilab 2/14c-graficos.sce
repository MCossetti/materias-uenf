// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: GRAFICOS IV ==================
clear; clc; clf();
Aluno = 'Mariana Cossetti Dalfior'; 

// propriedades da figura: NÃO alterar !!
dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;
// propriedades da figura
f=gcf();
f.figure_name='UENF - CCT - LCMAT - CC - 2023 - '+ Aluno + dd;  

x = [-10:10]
y1 = 2*x^2 + 5*x - 3;
y2 = x^3 + 3*x + 1;
y3 =  x^3 - 5*x^2 - 4*x +20;

subplot(131)  
plot(x,y1);
// propriedades dos eixos
da1=gca(); // 
da1.title.font_size = 5;
da1.title.font_foreground = 5;    // 5=vermelho
da1.title.text="y = 2x² + 5x - 3";
da1.x_label.text="x"; 
da1.y_label.text="y"; 

subplot(132) 
plot(x,y2);
// propriedades dos eixos
da2=gca(); // 
da2.title.font_size = 5;
da2.title.font_foreground = 3;    // 3=verde
da2.title.text="h = t³ +3t +1";
da2.x_label.text="t"; 
da2.y_label.text="y"; 

subplot(133)  
plot(x,y3);
// propriedades dos eixos
da3=gca(); // 
da3.title.font_size = 5;
da3.title.font_foreground = 12;    // 12=azul
da3.title.text="f(z) = (z-2)(z+2)(z-5)";
da3.x_label.text="z"; 
da3.y_label.text="y"; 

