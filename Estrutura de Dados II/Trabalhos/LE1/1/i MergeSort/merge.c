#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include "merge.h"

void merge(int *V, int inicio, int meio, int fim){
	int *temp, p1, p2, tamanho, i, j, k;
	int fim1 = 0, fim2 = 0;
	
	tamanho = fim-inicio+1;
	p1 = inicio;
	p2 = meio+1;
	
	temp = (int *) malloc (tamanho*sizeof (int)) ;
	
	if (temp != NULL) {
		for(i=0; i<tamanho; i++) { //verifica em cada posição o menor elemento
			if(!fim1 && !fim2) {
				if(V[p1] < V[p2]) // verifica o menor para inserir no 3 vetor
					temp[i]=V[p1++];
				else
					temp[i]=V[p2++];
				if(p1>meio) fim1=1; //se o vetor acabar define para fim  
				if(p2>fim) fim2=1;
			}else{
				if (!fim1)			//copia o vetor que não acabou para o fim do 3 vetor
					temp[i]=V[p1++]; 
				else
					temp[i]=V[p2++];
			}
		}
		for (j=0, k=inicio; j<tamanho; j++, k++) //copia do vetor auxiliar para o original
			V[k]=temp[j];
	}
	free(temp);
}

void mergeSort(int *V, int inicio, int fim) {
	int meio;
	if(inicio < fim) {
		meio = floor((inicio+fim)/2); //calcula o meio
		mergeSort (V, inicio, meio); //calcula primeira metade (dividindo os dados)
		mergeSort (V, meio+1, fim); //calcula a segunda metade (dividindo)
		merge (V, inicio, meio, fim); //combina as partes de forma ordenada 
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
