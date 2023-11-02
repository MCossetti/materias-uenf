#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "vet2.h"

typedef struct vet { //define a estrutura para armazenar os dados e a prioridade
    int data;
    int pri;
} vetor;

void criaHeap(vetor *vet, int pai, int fim) {
    int aux = vet[pai].pri;
    int aux2 = vet[pai].data;	
    int filho = 2 * pai + 1;	//calcula o indice do primeiro filho

    while (filho <= fim) { 		// verifica enquanto filho for menor ou igual ao fim
        if (filho < fim) { 		//verifica se existe filho direita
            if (vet[filho].pri < vet[filho + 1].pri) {		//verifica a qual prioridade é maior
                filho++;		//se verdade incrementa para apontar para o filho certo
            }
        }
        
        if (aux > vet[filho].pri) { 		//compara a prioridade do pai com a do filho atual se verdade sai do loop
            vet[pai].data = vet[filho].data; 	//se não, passa os dados do filho para o pai
            vet[pai].pri = vet[filho].pri;		//e também a prioridade 
            pai = filho;						//filho se torna o pai
            filho = 2 * pai + 1;				//calcula o novo indice do filho
        } else {
            filho = fim + 1;					//filho termina
        }
    }
    vet[pai].pri = aux;						//atribui valores originais de prioridade e 
    vet[pai].data = aux2;					//dados ao nó pai	
}

void heapSort(vetor *vet, int N) {
    int i;
    int aux;
    
    for (i = (N - 1) / 2; i >= 0; i--) {	
        criaHeap(vet, i, N - 1);			//constroi o heap maximo
    }
    
    for (i = N - 1; i >= 1; i--) {
        aux = vet[0].data;			//troca nó com dados e prioridade para a ultima posição
        vet[0].data = vet[i].data;
        vet[i].data = aux;
        
        aux = vet[0].pri;
        vet[0].pri = vet[i].pri;
        vet[i].pri = aux;
        
        criaHeap(vet, 0, i - 1);	//encontra o novo maior e reconstroi o heap
    }
}

void GeraVal(vetor *vet, int N) {
	int cont = 0, i;
	for(i=0; i<N; i++) {
		cont++;
		
		printf("\nValor: ");
		scanf("%d", &vet[i].data);
		
		printf("Prioridade: ");
		scanf("%d", &vet[i].pri);
		
		vet[i].pri *= 1000;		//criar prioridade exclusiva
		vet[i].pri = vet[i].pri + (1000 - 100*cont); //ajusta de acordo com sua posição subtrai 100*posição
	}												//garantindo que todos elementos tenham prioridades diferentes
}

void MostraHeap(vetor *vet, int n) {
	int i;
    for (i = 0; i < n; i++) {
        printf("Valor: %d | Prioridade: %d\n", vet[i].data, vet[i].pri); //mostra o elemento e sua prioridade
    }
}
