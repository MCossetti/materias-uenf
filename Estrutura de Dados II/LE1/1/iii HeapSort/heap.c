#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "heap.h"

void criaHeap(int *vet, int pai, int fim) {
	int aux = vet[pai]; //aux com valor da primeiro elemento
	int filho = 2*pai+1; // calcula o primeiro filho
	while (filho <= fim) { //se filho menor que final do vetor ainda está dentro do vetor
		if(filho < fim) {
			if(vet[filho] < vet[filho + 1]) { //Verifica qual é maior 
				filho++;	//se o segundo filho maior incrementa senão continua o primeiro filho
			}
		}
		if(aux < vet[filho]) { //verifica se filho maior que pai 
			vet[pai] = vet[filho]; //coloca o valor da filho na posição pai
			pai = filho;		//filho se torna pai
			filho = 2*pai+1;	//calcula o filho dele
		}else{
			filho = fim + 1;  //filho termina
		}
	}
	vet[pai] = aux; //antigo pai ocupa lugar do ultimo filho analisado
}

void heapSort (int *vet, int N) {
	int i, aux;

	for(i=(N - 1)/2; i >= 0; i--){ //volta da metade do vetor até o início
		criaHeap(vet, i, N-1);	//e ai cria o heap
	}

	for (i=N-1; i>=1; i--) { //colocar o elemento do topo e colocar na ultima posição do vetor
		aux = vet[0];		//move o elemento para o final e acha o maior do vetor restante
		vet[0] = vet[i]; 
		vet[i] = aux;
		criaHeap(vet, 0, i- 1); //reconstroi a heap
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
