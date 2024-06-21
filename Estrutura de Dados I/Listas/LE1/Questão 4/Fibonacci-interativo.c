#include <stdio.h>
#include <stdlib.h>

unsigned long long int fibonacci (int n) {
	unsigned long long int i, t1 = 1, t2 = 1, prox;
	for (i = 0; i < n; i++) {
       if (i <= 1) {
       		prox = i;
	   } 
	   else {
	   		prox = (t1 + t2);
        	t1 = t2;
        	t2 = prox;
        }
    }
    return prox;
}

 int main() {
    int n = 100;
    
//	printf("Digite o valor de n: ");
  //  scanf("%d", &n);
    
   //printf(" O %d numero de fibonacci e: %llld \n", n, fibonacci(n));
}       
    
