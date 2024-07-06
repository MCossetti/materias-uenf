#include <stdio.h>
#include <stdlib.h>
#include "AVL.h"

int main() {
    ArvAVL* minhaArvore = cria_ArvAVL();
    int vet[10]={70, 60, 80, 50, 65, 75, 85, 45, 55, 90};

    for(int i=0; i < 10; i++)
    {
    insere_ArvAVL(minhaArvore, vet[i]);
    }

    ArvHierarq(*minhaArvore);

    libera_ArvAVL(minhaArvore);

    return 0;
}
