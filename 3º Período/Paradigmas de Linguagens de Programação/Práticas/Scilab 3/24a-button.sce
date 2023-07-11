// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  buttons ==================

clear; clc;
Aluno = 'Mariana Cossetti Dalfior';

//--------------- coisas de Futebol --------------------------------------------
time=messagebox("Maior goleadas do Vasco sobre: ","modal", "info",['Atetico-MG' 'Botafogo' 'Flamengo' 'Fluminense']);

select  time                // time e' um string
       case 1 then
          messagebox([Aluno; '     Vasco 6 - 1 Atletico-MG';'no ano de 2008'],"CRVG");
       case 2  then
          messagebox([Aluno; '     Botafogo 0 - 6 Vasco';'no ano de 2010'],"CRVG");       
       case 3  then
          messagebox([Aluno; '     Vasco  7 - 0 Flamengo';'no ano de 1931'],"CRVG");
       case 4  then
          messagebox([Aluno; '     Vasco 6 - 0 Fluminense';'no ano de 1930'],"CRVG");          
end;   //   select
