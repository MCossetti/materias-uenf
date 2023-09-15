#include <stdio.h>
#include <stdlib.h>
#include <time.h>

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

void main(){
	int i, n;
	int *v;
	
	v = (int*) malloc(n*sizeof(int));
	
	printf("Tamanho para o vetor: ");
	scanf("%d", &n);
	
	srand(time(NULL));
	for(i=0; i<n; i++){
		v[i] = rand()%100;
	}

	printf("Vetor nao ordenado: \n");	
	for(i=0; i<n; i++) {
		printf("%d ", v[i]);
	}
	
	printf("\n");

	quickSort(v, 0, n-1);
	
	printf("\nVetor ordenado: \n");
	for(i=0; i<n; i++) {
		printf("%d ", v[i]);
	}
	
	free(v);
}
