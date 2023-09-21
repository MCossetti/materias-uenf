#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include "merge.h"

void main () {
	int i = 0, n;
	int *v;
	
	v = (int *) malloc(n*sizeof(int));
	
	printf("Tamanho para o vetor: ");
	scanf("%d", &n);
	
	fill_array(v, n);
	
	printf("\nVetor nao ordenado: \n");
	show_array(v, n);
	
	printf("\n");
	
	mergeSort(v, 0, n-1);
	
	printf("\nVetor ordenado: \n");
	show_array(v, n);
	
	free(v);
}
