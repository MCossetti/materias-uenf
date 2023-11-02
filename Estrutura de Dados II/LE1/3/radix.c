#include <stdio.h>
#include <stdlib.h>
#include "radix.h"

// Fun��o para encontrar o maior elemento em um vetor
int findMax(int arr[], int n) {	
	int i;
    int max = arr[0];
    for ( i = 1; i < n; i++) {
        if (arr[i] > max) {
            max = arr[i];	//atualizar para o valor atual
        }
    }
    return max;	//retorna o maior elemento
}

// Fun��o CountingSort para ordenar o array baseado no d�gito espec�fico
void countingSort(int arr[], int n, int exp) {
	int i;
    int output[n];
    int count[10] = {0};

    // Contagem das ocorr�ncias dos d�gitos
    for ( i = 0; i < n; i++) {
        count[(arr[i] / exp) % 10]++;	
    }

    // Atualiza��o do array de contagem para conter as posi��es reais dos d�gitos no array de sa�da
    for ( i = 1; i < 10; i++) {
        count[i] += count[i - 1];	//ocorre adicionando cada elemento de contagem ao seu elemento de contagem anterior
    }

    // Constru��o do array de sa�da do final para o in�cio
    for ( i = n - 1; i >= 0; i--) {
        output[count[(arr[i] / exp) % 10] - 1] = arr[i]; //diminui um elemento no array count e coloca o elemento no array output
        count[(arr[i] / exp) % 10]--;					//na posi��o calculada
    }

    // Copiar o array de sa�da para o array original
    for ( i = 0; i < n; i++) {
        arr[i] = output[i];
    }
}

// Fun��o RadixSort para ordenar um array de inteiros
void radixSort(int arr[], int n) {
	int exp;
    int max = findMax(arr, n); //encontra elemento maximo e coloca em max

    // Realiza o CountingSort para cada d�gito, come�ando pelo d�gito menos significativo at� o mais significativo
    for (exp = 1; max / exp > 0; exp *= 10) { //funciona at� max/exp seja maior que 0
        countingSort(arr, n, exp);
    }
}
