#include <stdio.h>

void selectionSort(int vet[], int n) {
    int i, j, min, temp, comparacoes = 0;
	long atribuicoes = 0;
    for (i = 0; i < n - 1; i++) {
        min = i;
        for (j = i + 1; j < n; j++) {
        	comparacoes++;
            if (vet[j] < vet[min]) {
                min = j;
            }
        }
        temp = vet[min];
        vet[min] = vet[i];
        vet[i] = temp;
        atribuicoes += 3;
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
	
	printf("Vetor aleatorio: ");
    for (i = 0; i < n; i++) {
        vet[i] = rand() % 100; 
        printf("%d ", vet[i]);
	}
    

    selectionSort(vet, n); 
    printf("\nVetor ordenado: ");
    for (i = 0; i < n; i++) {
        printf("%d ", vet[i]); 
    }
    printf("\n");
    return 0;
}
