#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void criavetor(int *vet, int n) {
	int i;
    srand(time(NULL));

    for(i=0; i < n; i++)
        vet[i] = rand()%100;
}

void mostravetor(int *vet, int n) {
	int i;
    for(i=0; i < n; i++)
    {
        printf("%d ", vet[i]);
    }
}


void selectionSort(int vet[], int n) {
    int i, j, min, temp;
	long atribuicoes = 0;
    for (i = 0; i < n - 1; i++) {
        min = i;
        for (j = i + 1; j < n; j++) {
            if (vet[j] < vet[min]) {
                min = j;
            }
        }
        temp = vet[min];
        vet[min] = vet[i];
        vet[i] = temp;
    }
}

void bubbleSort(int vet[], int n) {
   int i, j;
   for (i = 0; i < n-1; i++) {
       for (j = 0; j < n-i-1; j++) {
           if (vet[j] > vet[j+1]) {
               int temp = vet[j];
               vet[j] = vet[j+1];
               vet[j+1] = temp;
           }
       }
   }
}

void insertionSort(int vet[], int n) {
    int i, j, chave;
    for (i = 1; i < n; i++) {
        chave = vet[i];
        j = i - 1;
        while (j >= 0 && vet[j] > chave) {
            vet[j + 1] = vet[j];
            j--;
        }
        vet[j + 1] = chave;
       
    }
}


int main()
{
    int *vet, n;

    printf("Tamanho do vetor: ");
    scanf("%d", &n);

    vet = (int*)malloc(sizeof(int)*n);

    criavetor(vet, n);

    mostravetor(vet, n);

    insertionSort(vet, n);

  //  bubbleSort(vet, n);

   // selectionSort(vet, n);

    printf("\n");

    mostravetor(vet, n);

}
