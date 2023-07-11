// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: Programacao: Formulario de Entrada de dados ==================

clear; clc;
vendedor = 'Mariana Cossetti Dalfior';    // Seu NOME aqui
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

messagebox([titulo; b; mensagem], "UENF - "+vendedor);
