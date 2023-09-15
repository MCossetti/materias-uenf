#include <stdio.h>

void insertionSort(int vet[], int n) {
    int i, j, chave, comparacoes = 0, atribuicoes = 0;
    for (i = 1; i < n; i++) {
        chave = vet[i];
        j = i - 1;
        while (j >= 0 && vet[j] > chave) {
            vet[j + 1] = vet[j];
            j--;
            comparacoes++;
            atribuicoes++;
        }
        vet[j + 1] = chave;
        atribuicoes++;
    }
    printf("\n\nNumero de comparacoes: %d\n", comparacoes);
    printf("\nNumero de atribuicoes: %d\n", atribuicoes);
}

int main() {
	int i;
	
	int n=50000;
   	//printf("Qual tamanho do vetor? ");
	//scanf("%d", &n);
    
    int vet[n];
	
	printf("\nVetor aleatorio: ");
    for (i = 0; i < n; i++) {
        vet[i] = rand() % 100; 
        printf("%d ", vet[i]);
	}

    insertionSort(vet, n); 
    printf("\nVetor ordenado: ");
    for (i = 0; i < n; i++) {
        printf("%d ", vet[i]); 
    }
    printf("\n");
    return 0;
}
