// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  GUI - Menus  e Submenus Interativos ==================

// Observe as opçoes do MENU PRINCIPAL da JANELA de COMANDOS..................

clear; clc;
Aluno = 'Mariana Cossetti Dalfior';    // Incluir seu NOME aqui


//  Cria uma janela grafica: Comando "figure"
h = figure('position', [150 150 600 600], ...
           'backgroundcolor', [1 0.97 0.8], ...   // [R G B]      0.0 - 1.0
           "figure_name", "UENF "+Aluno);
           
 
//----------------- Funções -----------------------------------
function pedirHamburguer()
sabores = ['Monumental','Vascudo','Colossal','Vascheddar','Vasco da Grama'];
quant = ['1','2','3', '4', '5'];
adic = ['Nenhum','Bacon','Cheddar','Cebola caramelizada', 'Maionese'];
bebida = ['Refrigerante', 'Água', 'Cerveja', 'Suco'];
pagam = ['Cartão', 'Pix', 'Dinheiro'];

L1=list('Sabores de hamburguer',1, sabores); //titulo, Numero opção default, lista-opcoes
L2=list('Quantidade',1, quant);
L3=list('Adicionais',1, adic);
L4=list('Bebida',1, bebida);
L5=list('Forma de Pagamento',1, pagam) 

OpMatr=x_choices([Aluno;' Realize o seu pedido:'],list(L1, L2, L3, L4, L5)); 

messagebox([Aluno+', o seu pedido foi: '; '  '; 
'Sabor de hamburguer: ' + string(sabores(OpMatr(1)));
'         Quantidade: '+ string(quant(OpMatr(2))); 
'      Adicional: '+ string(adic(OpMatr(3)));
'      Bebida: '+ string(bebida(OpMatr(4)));
'      Forma de pagamento: '+ string(pagam(OpMatr(5)))]);
endfunction;

function valorPedido()
txt=['Preço 1';'Preço 2';'Preço 3 ' ;'Preço 4']; 
info=x_mdialog([Aluno;'Inserir os preços dos produtos: '],txt,['';'';'';'']); 

p1=evstr(info(1));   // strings convertidos em numeros
p2=evstr(info(2)); 
p3=evstr(info(3)); 
p4=evstr(info(4)); 

pf = (p1+p2+p3+p4);

messagebox('O preço final após o desconto: '+string(pf), "UENF - "+Aluno);

endfunction;

function cadastro()
titulo = 'Cadastro de produtos';
b = "    ";

itens =["Número de identificação";"Preço"; "Quantidade"];

[ok,id,preço,quantidade]=getvalue([titulo;'Escreva os dados do produto: '], itens, list("vec",1,"vec",1,"vec",1), ["";"";""]);

registro = ([id, preço, quantidade])

if registro <> 0 then 
    mensagem ="Produto cadastrado!";
else
    mensagem ="Produto não cadastrado!";
end

messagebox([titulo; b; mensagem], "UENF - "+Aluno);

endfunction;
//------------------------------------------------------------
function Mariana_Sobre()
	msg = msprintf(gettext(" O maior time do Rio de Janeiro;"...
                             +"\nTime com história mais bonita do futebol brasileiro."));
	messagebox(msg, gettext("Autor"), "info", "modal");
endfunction

///===============  Programa principal  =====================
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
	hop2 = uimenu("parent",h, "label",gettext("Funcões"));
	hop3 = uimenu("parent",h, "label",gettext("Sobre"));
	
	// Menu: Arquivo (remover janela grafica)
	uimenu("parent",hop1, "label",gettext("Fechar"), "callback", "close(h)");
	// Menu: Graficos
	uimenu("parent",hop2, "label",gettext("Pedido de Hambúrguer"), "callback", "pedirHamburguer()");	
	uimenu("parent",hop2, "label",gettext("Calculo de Valores"), "callback", "valorPedido()");
	uimenu("parent",hop2, "label",gettext("Cadastro de Produtos"), "callback", "cadastro()");

	// Menu: Sobre
	uimenu("parent",hop3, "label",gettext("Sobre Vasco da Gama"), "callback","Mariana_Sobre();");
