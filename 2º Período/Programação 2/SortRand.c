#include <stdlib.h>
#include <time.h>

int posicao(int i, int a, int *va) {
	
	while(i > 0) {
		if (va[i - 1] > a) {
			va[i] = va[i - 1];
			i--;
		}
		else {
			break;
		}
	}
	return i;
}

int main() {
	int a, h, i, n, *va;
	
	printf("Tamanho do vetor: ");
    scanf("%d", &n);
    
	va = (int *) calloc (n, sizeof(int));
	if (va == NULL) {
		printf("Erro na alocacao de dados... ");
		exit(1);
	}
	
	srand(time(NULL));
	for(i = 0; i < n; i++) { 
		a = rand()%100;
		h = posicao(i, a, va);
		va[h] = a;
	}
	
	for (i = 0; i < n; i++) {
		printf("%d ", va[i]);
	}
	
	return 0;
}
