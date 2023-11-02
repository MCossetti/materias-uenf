#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "vet2.h"

int main() {
    int n;

    printf("\nTamanho do vetor: ");
    scanf("%d", &n);

    vetor *vet;
    vet = (vetor*) malloc(n * sizeof(vetor**));

	GeraVal(vet, n);

    heapSort(vet, n);
	
	printf("\n");
	
    MostraHeap(vet, n);

    free(vet);

    return 0;
}
