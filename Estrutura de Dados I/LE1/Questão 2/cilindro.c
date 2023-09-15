#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "cilindro.h"

struct cilin{
    float pos; 	//posição
    float r;	//raio
    float al;	//altura
};

Cilindro* INICIALIZAR(float pos, float r, float al) //inicializar o cilindro 
{
    Cilindro* C = (Cilindro*)malloc(sizeof(Cilindro));

    if(C == NULL)
    {
        printf("\nERROR: problema na alocacao de memoria");
        exit(1);
    }

    C->pos = pos;
    C->r = r;
    C->al = al;

    return C;
}

void ALTERAR(Cilindro* C, float pos, float r, float al) //alterar cilindro
{
    if(C == NULL)
    {
        printf("\nERROR: problema na alocacao de memoria");
        exit(1);
    }

    C->pos = pos;
    C->r = r;
    C->al = al;
}

float AREA(Cilindro *C) //area do cilindro
{
    if(C == NULL)
    {
        printf("\nERROR: problema na alocacao de memoria...");
        exit(1);
    }

     return 2*3.14*C->r * (C->r + C->al) ;
}

float VOLUME(Cilindro *C) //volume do cilindro
{
    if(C == NULL)
    {
        printf("\nERROR: Problema na alocacao de memoria");
        exit(1);
    }

    return C->r*C->r*M_PI*C->al;
}

void DESTRUIR(Cilindro *C) //limpar cilindro
{
    free(C);
}
