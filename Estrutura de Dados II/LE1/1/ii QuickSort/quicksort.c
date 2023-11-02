#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "quicksort.h"

int particiona(int *V, int inicio, int final){
	int esq, dir, pivo, aux;
	
	esq = inicio;
	dir = final;
	pivo = V[inicio]; // pivo � a posi��o de inicio do vetor
	
	while (esq < dir) {
		while(V[esq] <= pivo) //verifica se � menor ou igual ao pivo 
			esq++;			//avan�a a esquerda at� encontrar um maior
		while(V[dir] > pivo) //quando encontra passa a verificar a direita(final do vetor) compara se elementos s�o maiores que o pivo
			dir--;			//vai voltando no vetor
		if(esq < dir) {		//quando acaba todo esse processo verifica se esquerda � menor que a direita 
			aux = V[esq];	//troca o elemento da direita com o da esquerda
			V[esq] = V[dir];
			V[dir] = aux;
		}
	}
	V[inicio] = V[dir]; //troca o da direita com o inicio(pivo) pois � o valor menor que o pivo
	V[dir] = pivo; //a posi��o da direita recebe o pivo
	
	return dir; //retorna o valor da direita pois todo mundo antes dele � menor e todo mundo depois � maior
}

void quickSort (int *V, int inicio, int fim) {
	int pivo;
	if (fim > inicio) {
		pivo = particiona(V, inicio, fim); //calcula a posi��o do pivo
		quickSort(V, inicio, pivo-1); // chama para elementos antes do pivo
		quickSort(V, pivo+1, fim); // chama para elementos depois do pivo
	}  //recursivamente ordena cada parti��o 
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
