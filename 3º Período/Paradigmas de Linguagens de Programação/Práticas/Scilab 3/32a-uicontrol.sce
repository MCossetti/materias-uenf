// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  GUI   UIControl
clear; clc;
Aluno = 'Mariana Cossetti Dalfior';

//  Cria uma janela grafica: Comando "figure"
h = figure('position', [150 150 600 600], ...
           'backgroundcolor', [0.7 0.9 1], ...   // [R G B]      0.0 - 1.0
           "figure_name", "UENF "+Aluno);
           

//elimina o toolbar da janela grafica
toolbar(h.figure_id,'off');


// Titulo do quadro:  um texto
uicontrol(h,"style", "text", ...
            "string", " Equação de 2º grau", ...
            "position", [155 550 300 40], ...
            "backgroundcolor", [0.7 0.9 1], ...
            "fontsize", 30);

// A
T1 = uicontrol(h, 'style', 'text',...
                  'string', 'Digite o valor de A:', ...
                  'position', [20 475 200 50], ...
                  'backgroundcolor', [0.7 0.9 1]);

E1 = uicontrol(h, 'style', 'edit', ...
                  'string', "", ...
                  'position', [150 485 70 30], ...
                  'fontsize', 15, ...
                  'backgroundcolor', [1 1 1]);

// B
T2 = uicontrol(h, 'style', 'text', ...
                  'string', 'Digite o valor de B:', ...
                  'position', [20 425 200 50], ...
                  'backgroundcolor', [0.7 0.9 1]);

E2 = uicontrol(h, 'style', 'edit',...
                  'string', "", ...
                  'position', [150 435 70 30], ...
                  'fontsize', 15, ...
                  'backgroundcolor', [1 1 1]);
                  


//C
T3 = uicontrol(h, 'style', 'text', 'string', 'Digite o valor de C:', ..
'position', [20 375 200 50], 'backgroundcolor', [0.7 0.9 1]);

E3 = uicontrol(h, 'style', 'edit', 'string', '', ..
'position', [150 385 70 30], 'fontsize', 15, 'backgroundcolor', [1 1 1]);


function resolver()   
       a = evstr(get(E1, 'string'))
       b = evstr(get(E2, 'string'))
       c = evstr(get(E3, 'string'))
       delta = b*b-4*a*c;
       
       if (delta<0) then
           messagebox('A equação não tem raízes reais')
       else
           messagebox(['Raízes reais:';
                '   X1 = '+string((-b+sqrt(delta))/2*a);
                '   X2 = '+string((-b-sqrt(delta))/2*a)]);
       end
       
       x = -10:0.1:10;
       y = a.*x.*x + b.*x +c;
       subplot(212)
       plot(x,y,'r');
       da1=gca();
       da1.title.font_size = 5;
       da1.title.font_foreground = 5;
       da1.y_laction = 'middle';
       da1.x_laction = 'middle';
       da1.x_label.text = 'x';
       da1.y_label.text = 'y';
       
endfunction

function Mariana_Sobre()
	msg = msprintf(gettext(" Interface desenvolvida na UENF (CCT - LCMAT - CC)"..
                          +"\nAutor: Mariana Cossetti Dalfior,"));
	messagebox(msg, gettext("Autor"), "info", "modal");
endfunction



//elimina o toolbar da janela grafica
toolbar(h.figure_id,'off');

	// ------------------
	// Passo : Menu da janela Principal
	// ------------------
	
	// Remove menus originais do Scilab
	delmenu(h.figure_id,gettext("&File"));
	delmenu(h.figure_id,gettext("&Tools"));
	delmenu(h.figure_id,gettext("&Edit"));
	delmenu(h.figure_id,gettext("&?"));
	toolbar(h.figure_id,"off");

	// Novas opcoes de menu
	hop1 = uimenu("parent",h, "label",gettext("Arquivo"));
	hop2 = uimenu("parent",h, "label",gettext("Sobre"));
	
	// Menu: Arquivo (remover janela grafica)
	uimenu("parent",hop1, "label",gettext("Fechar"), "callback", "close(h)");
	
	// Menu: Sobre
	uimenu("parent",hop2, "label",gettext("Autor da Interface"), "callback","ASCV_Sobre();");
	// Sleep to guarantee a better display (avoiding to see a sequential display)
	sleep(500);


P1 = uicontrol(h, 'position', [350 435 180 40], ...
                  'style', 'pushbutton', ...
                  'string', 'Pressione aqui ', ...   // butão para pressionar
                  'callback', 'resolver()', ...
                  "fontsize", 20, ...
                  'backgroundcolor', [1 0.5 0]);
