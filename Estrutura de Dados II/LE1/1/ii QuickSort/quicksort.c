#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "quicksort.h"

int particiona(int *V, int inicio, int final){
	int esq, dir, pivo, aux;
	
	esq = inicio;
	dir = final;
	pivo = V[inicio];
	
	while (esq < dir) {
		while(V[esq] <= pivo)
			esq++;
		while(V[dir] > pivo)
			dir--;
		if(esq < dir) {
			aux = V[esq];
			V[esq] = V[dir];
			V[dir] = aux;
		}
	}
	V[inicio] = V[dir];
	V[dir] = pivo;
	
	return dir;
}

void quickSort (int *V, int inicio, int fim) {
	int pivo;
	if (fim > inicio) {
		pivo = particiona(V, inicio, fim);
		quickSort(V, inicio, pivo-1);
		quickSort(V, pivo+1, fim);
	}
}

void fill_array(int *V, int n){  //cria vetor aleatório
	int i;
	for (i=0; i<n; i++){
		V[i] = rand()%100;
	}
}

void show_array(int *V, int n){ //mostra vetor
	int i;
	for(i=0; i<n; i++) {
		printf("%d ", V[i]);
	}
}
