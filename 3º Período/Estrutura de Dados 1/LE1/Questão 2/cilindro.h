typedef struct cilin Cilindro;

Cilindro* INICIALIZAR(float pos, float r, float a);

void ALTERAR(Cilindro* C, float pos, float r, float a);

float AREA(Cilindro *C);

float VOLUME(Cilindro *C);

void DESTRUIR(Cilindro *C);
