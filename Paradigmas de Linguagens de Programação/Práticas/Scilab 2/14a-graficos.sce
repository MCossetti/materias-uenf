// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: GRAFICOS IV ==================
clear; clc; clf();
Aluno = 'Mariana Cossetti Dalfior';  // <============ Nome do aluno

// propriedades da figura: NÃO alterar !!
dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;
// propriedades da figura
f=gcf();
f.figure_name='UENF - CCT - LCMAT - CC - 2023 - '+ Aluno + dd;  

x = -2*%pi:0.1:2*%pi;    
y1 = sin(x);
y2 = cos(x);
y3 =sin(x) + cos(x);

 
subplot(333)  
plot(x,y1,'r');
// propriedades dos eixos
da1=gca(); // 
da1.title.font_size = 5;
da1.title.font_foreground = 2;    // 5=vermelho
da1.title.text="y =sin(x)";
da1.x_label.text="Tempo"; 
da1.x_location='middle'; 
da1.y_label.text="y =sin(x)"; 


subplot(331) 
plot(x,y2);
// propriedades dos eixos
da2=gca(); // 
da2.title.font_size = 5;
da2.title.font_foreground = 12;    
da2.title.text="y =cos(x)";
da2.x_label.text="Tempo"; 
da2.x_location='middle'; 
da2.y_label.text="y =cos(x)"; 


subplot(339)  
plot(x,y3,'g');
// propriedades dos eixos
da3=gca(); // 
da3.title.font_size = 5;
da3.title.font_foreground = 5;    
da3.title.text="y =sin(x) + cos(x)";
da3.x_label.text="Tempo"; 
da3.x_location='middle'; 
da3.y_label.text="y =sin(x) + cos(x)"; 

subplot(335)  

da4=gca(); // 
da4=gca(); // 
da4.title.font_size = 8;  // tamanho da fonte
da4.title.font_foreground = 3;    
da4.title.text=Aluno;


