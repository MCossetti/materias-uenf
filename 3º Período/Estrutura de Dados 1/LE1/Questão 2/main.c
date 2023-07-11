#include <stdio.h>
#include <stdlib.h>
#include "cilindro.h"

int main()
{
    float a, vol;

    Cilindro *Ci;

    Ci = INICIALIZAR(3, 8, 12);

    a = AREA(Ci);

    vol = VOLUME(Ci);

    printf("\n%f m^2", a);
    printf("\n%f m^3", vol);

    ALTERAR(Ci, 2, 6, 9);

    a = AREA(Ci);
    vol = VOLUME(Ci);

    printf("\n-------------\n");
    printf("\n%f m^2", a);
    printf("\n%f m^3", vol);

    DESTRUIR(Ci);
}
