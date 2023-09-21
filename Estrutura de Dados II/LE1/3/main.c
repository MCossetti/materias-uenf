#include <stdio.h>
#include <stdlib.h>
#include "radix.h"

int main() {
    int arr[] = {170, 45, 75, 90, 802, 24, 2, 66};
    int i;
    int n = sizeof(arr) / sizeof(arr[0]);

    printf("Array antes da ordenação: ");
    for ( i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    radixSort(arr, n);

    printf("Array ordenado: ");
    for ( i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}
