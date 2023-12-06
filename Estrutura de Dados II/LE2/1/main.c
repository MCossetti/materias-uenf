#include <stdio.h>
#include <stdlib.h>
#include "ArvoresBBeAVL.h"

int main()
{
    // Definições de variáveis
	ArvBin* MinhaArvoreBin;
    int vet[10000];

    srand(time(NULL));
    for(int i=0; i<10000; i++) {
        vet[i] = rand()%100000;
    }
   // Cria a árvore binária de busca
	printf("Comeca o teste da arvore binaria de busca");

	MinhaArvoreBin = cria_ArvBin();

	for(int i=0; i<10000; i++) {
        insere_ArBin(MinhaArvoreBin, vet[i]);
	}

	printf("\nA arvore de Busca Binaria contem os seguintes elementos:\n");
	emOrdem_ArvBin(MinhaArvoreBin);

   // Definições de variáveis
	ArvAVL* MinhaArvore;

   // Cria a árvore binária de busca
	printf("\nComeca o teste da Arvore AVL");

	MinhaArvore = cria_ArvAVL();

    // Ingressa dados na árvore binária de busca
	for(int i=0; i<10000; i++) {
        insere_ArvAVL(MinhaArvore, vet[i]);
	}

	printf("\nA arvore AVL contem os seguintes elementos:\n");
	emOrdem_ArvAVL(MinhaArvore);

	printf("\nA altura da arvore de Busca Binaria e: %d\n", altura_ArvBin(MinhaArvoreBin));
	printf("A altura da arvore AVL e: %d\n",altura_ArvAVL(MinhaArvore));

	printf("Total de nos: %d", totalNO_ArvAVL(MinhaArvore));

	return 0;
}
