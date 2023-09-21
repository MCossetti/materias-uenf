#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "heap.h"

void criaHeap(int *vet, int pai, int fim) {
	int aux = vet[pai];
	int filho = 2*pai+1;
	while (filho <= fim) {
		if(filho < fim) {
			if(vet[filho] < vet[filho + 1]) {
				filho++;
			}
		}
		if(aux < vet[filho]) {
			vet[pai] = vet[filho];
			pai = filho;
			filho = 2*pai+1;
		}else{
			filho = fim + 1;
		}
	}
	vet[pai] = aux;
}

void heapSort (int *vet, int N) {
	int i, aux;

	for(i=(N - 1)/2; i >= 0; i--){
		criaHeap(vet, i, N-1);
	}

	for (i=N-1; i>=1; i--) {
		aux = vet[0];
		vet[0] = vet[i];
		vet[i] = aux;
		criaHeap(vet, 0, i- 1);
	}
}

void fill_array(int *V, int n){  //cria vetor aleat�rio
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
