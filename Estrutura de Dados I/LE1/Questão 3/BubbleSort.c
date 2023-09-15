#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void bubbleSort(int vet[], int n) {
   int i, j, comparacoes = 0, atribuicoes = 0;
   for (i = 0; i < n-1; i++) {
       for (j = 0; j < n-i-1; j++) {
       		comparacoes++;
           if (vet[j] > vet[j+1]) {
               int temp = vet[j];
               vet[j] = vet[j+1];
               vet[j+1] = temp;
               atribuicoes += 3;
           }
       }
   }
   printf("\n\nNumero de comparacoes: %d\n", comparacoes);
   printf("\nNumero de atribuicoes: %d\n", atribuicoes);
}

int main() {
	int i;
 	int n=50000;
//	printf("Qual tamanho do vetor? ");
//	scanf("%d", &n);
	
	int vet[n];
	
	printf("\nVetor aleatorio: \n");
    for (i = 0; i < n; i++) {
        vet[i] = rand() % 100; 
        printf("%d ", vet[i]);
	}
		
	bubbleSort(vet, n);
	printf("\nArray ordenado: \n");
   	for (i=0; i < n; i++)
       printf("%d ", vet[i]);
   
}
