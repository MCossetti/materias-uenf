#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int MostraVetor(int n, int vet[100]){
	int i;
	for(i = 0; i < n; i++){
		printf("%d ", vet[i]);
	}
}

int CalPosCerta(int a, int b, int vet[100]){
	int pivo, aux;
	pivo = vet[a];
	a++;
	while(a <= b){
		while(pivo >= vet[a]){
			a++;
		}
		while (pivo < vet[b]){
			b--;
		}
		if(a < b){
			aux = vet[a];
			vet[a] = vet[b];
			vet[b] = aux;
		}
	}
	return(b);
}

void OrdenaVetor(int a, int b, int vet[100]){
	int h, k;
	h = CalPosCerta(a, b, vet);
	k = vet[a];
	vet[a] = vet[h];
	vet[h] = k;
	if(a < h-1){
		OrdenaVetor(a, h-1, vet);
	}
	if(b > h+1){
		OrdenaVetor(h+1, b, vet);
	}
}

int main (void){
	int vet[100];
	int n, i;
	
	printf("Qual o tamanho do vetor: ");
	scanf("%d", &n);
	
	srand(time(NULL));
	for (i = 0; i < n; i++){
		vet[i] = rand()%100;
	}
	
	printf("Vetor antes da ordenacao: ( ");
	MostraVetor(n, vet);
	printf(") \n");

	OrdenaVetor(0, n-1, vet);
	
	printf("Vetor depois da ordenacao: ( ");
	MostraVetor(n, vet);
	printf(") \n"); 	
	
	return 0;
}
