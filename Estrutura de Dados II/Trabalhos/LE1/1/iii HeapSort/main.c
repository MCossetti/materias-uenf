#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "heap.h"

void main(){
	int i, n;
	int *v;
	
	v = (int*) malloc(n*sizeof(int));
	
	printf("Tamanho para o vetor: ");
	scanf("%d", &n);
	
	fill_array(v, n);
	
	printf("\nVetor nao ordenado: \n");
	show_array(v, n);
	
	printf("\n");
	
	heapSort(v, n);
	
	printf("\nVetor ordenado: \n");
	show_array(v, n);
	
	free(v);
}
