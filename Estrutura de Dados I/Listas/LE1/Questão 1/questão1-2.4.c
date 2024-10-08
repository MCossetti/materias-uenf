/* programa_memoria_02.c */
#include <stdio.h>
#include <stdlib.h>

	int main()
{
	/* A declara��o de uma matriz de 2 dimens�es exige um ponteiro para ponteiro. */
	int **p;
	int i,j,k,x;
	printf("\nDigite as dimensoes da matriz ->");
	scanf("%d %d", &i, &j);


	/* Aloca��o da primeira dimens�o. Internamente, a fun��o calloc far� uma multiplica��o da
	quantidade de elementos pelo tamanho de cada elemento para saber quanto de mem�ria
	deve ser alocada. */
	p = (int**)calloc (i, sizeof(int*));
	if( p == NULL )
	{
		printf("\nErro de alocacao de memoria");
		exit(1);
	}

	for(k=0; k<i; k++)
	{
		/* Aloca��o das linhas de cada coluna (segunda dimens�o) */
		p[k] = (int*) calloc(j,sizeof(int));
		if( p[k] == NULL )
		{
			printf("\nErro de alocacao de memoria");
			exit(1);
		}
	}

	for(k=0; k<i; k++)
	{
		for(x=0; x<j; x++)
		{
			printf("Digite o numero para o indice %d,%d ->", k,x);
			scanf("%d", &p[k][x]);
		}
	}

	for( k=0;k<i;k++)
	{
		for(x=0;x<j;x++)
		{
			printf("O numero do indice %d,%d eh %d\n", k,x, p[k][x]);
		}
	}
	
	printf("\nLiberando memoria alocada");
	for( k=0;k<i;k++)
	{
		free(p[k]); /* Primeiro deve ser liberada a mem�ria para linha da matriz... */
	}
	free(p); /* ... para depois liberar a mem�ria do vetor que continha as linhas. */
}
