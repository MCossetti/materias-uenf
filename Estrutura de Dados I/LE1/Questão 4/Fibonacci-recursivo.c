#include <stdio.h>

int fibonacci(int n);

int main() {
    int n = 10, fib;

    fib = fibonacci(n);

   	printf("O %dº termo da sequencia de Fibonacci e %d.\n", n, fib);

    return 0;
}

int fibonacci(int n) {
    if (n == 0 || n == 1) {
        return n;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}
