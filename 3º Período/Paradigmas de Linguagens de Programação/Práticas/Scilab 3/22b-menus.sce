// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: Programacao: GUI - Menus Interativos ==================

clear; clc;
Cliente = 'Mariana Cossetti Dalfior';

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

OpMatr=x_choices([Cliente;' Realize o seu pedido:'],list(L1, L2, L3, L4, L5)); 

messagebox([Cliente+', o seu pedido foi: '; '  '; 
'Sabor de hamburguer: ' + string(sabores(OpMatr(1)));
'         Quantidade: '+ string(quant(OpMatr(2))); 
'      Adicional: '+ string(adic(OpMatr(3)));
'      Bebida: '+ string(bebida(OpMatr(4)));
'      Forma de pagamento: '+ string(pagam(OpMatr(5)))]);

