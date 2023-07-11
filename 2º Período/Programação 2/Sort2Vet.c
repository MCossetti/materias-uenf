#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void preencheVet(int l, int *v) {
    int i;

    srand(time(NULL));
    for(i = 0; i < l; i++) {
        v[i] = rand()%100;
    } 
}

void mostraVet(int l, int *v) {
    int i;

    printf("\n-----------------------VETOR--------------------------\n");
    for(i = 0; i < l; i++) {
        printf("[%d] ", v[i]);
    }
    printf("\n");
}

int buscaPosicao(int a, int b, int *v) {
    int piv;

    piv = v[a];
    a++;
    while(a < b) {
        while(piv > v[a]) {
            a++;
        }

        while(piv < v[b]) {
            b--;
        }

        if(a < b) {
            int aux = v[a];
            v[a] = v[b];
            v[b] = aux;
        }
    }
    return(b);
}

void organizarVet(int a, int b, int *v) {
    int pos;

    pos = buscaPosicao(a, b, v);
    int aux = v[a];
    v[a] = v[pos];
    v[pos] = aux; 

 	if(a < pos-1) {
        organizarVet(a, pos-1, v);
    }
    if(b > pos+1) {
        organizarVet(pos+1, b, v);
    }
}

void organizarVet3(int n, int m, int q, int *v1, int *v2, int *v3) {
    int i, b = 0, a = 0;

    for(i = 0; i < q; i++) {
        if((a < n) && (b < m)) {
            if(v1[a] < v2[b]) {
                v3[i] = v1[a];
                a++;
            }
            else {
                v3[i] = v2[b];
                b++;
            }
        } 
        else {
            if(a < n) {
                v3[i] = v1[a];
                a++;
            }
            if(b < m) {
                v3[i] = v2[b];
                b++;
            }
        }
    }
}
 
int main(void) {
    int *v1, *v2, *v3, n, m, q;

    printf("Tamanho do primeiro vetor: ");
    scanf("%d", &n);

    printf("Tamanho do segundo vetor: ");
    scanf("%d", &m);

    q = m+n;

    v1 = (int *) calloc(n, sizeof(int));
    if(v1 == NULL) {
        printf("\nErro na alocacao de dados...\n");
        exit(1);
    }

    v2 = (int *) calloc(m, sizeof(int));
    if(v2 == NULL) {
        printf("\nErro na alocacao de dados...\n");
        exit(1);
    }

    v3 = (int *) calloc(q, sizeof(int));
    if(v3 == NULL) {
        printf("\nErro na alocacao de dados...\n");
        exit(1);       
    }

    preencheVet(n, v1);
    preencheVet(m, v2);

    organizarVet(0, n-1, v1);
    organizarVet(0, m-1, v2);

    mostraVet(n, v1);
    mostraVet(m, v2);

    organizarVet3(n, m, q, v1, v2, v3);
    mostraVet(q, v3);

    return 0;
}
