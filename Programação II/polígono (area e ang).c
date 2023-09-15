#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

#define PI 3.14159265

typedef struct pto {
	int x, y;	//pontos
	float ang;	//angulos
}stPto;

typedef struct vetPto {
	int n;
	stPto *v;
}stVetPto;

stPto *vetorPontos(int n) {
	int i;
	stPto *v =(stPto*) malloc(n*sizeof(stPto));
	srand(time(NULL));
	for(i = 0; i < n; i++) {
		v[i].x = rand()%100;
		v[i].y = rand()%100;
		v[i].ang = 0.0f;
	}
	return (v);
}

void mostraPoligono(stVetPto *vp) {
	int i;
	printf("\nPoligono de %d pontos: \n", vp->n);
	for(i = 0; i < vp->n; i++) {
		printf("(%3d, %3d), %3.2f ", vp->v[i].x, vp->v[i].y, vp->v[i].ang);
	}	
	printf("\n");
}

float calcArea (stVetPto *vet) {
	int i, ii; 
	float a = 0;
	for (i = 0; i < vet->n; i++) {
		ii = (i+1)%(vet->n);
		a += ((vet->v[ii].x - vet->v[i].x)*(vet->v[ii].y + vet->v[i].y))/2.0; 
	}	
	return (abs(a));	
}

void calcMediaVetor(stVetPto *vp) {
	float med[2];
	int i;
	// cálculo da média
	med[0] = med[1] = 0.0f;
	for(i = 0; i < vp->n; i++) {
		med[0] += vp->v[i].x;
		med[1] += vp->v[i].y;
	}
	med[0] /= vp->n;
	med[1] /= vp->n;
	
	//cálculo dos vetores estrelas;
	for(i = 0; i < vp->n; i++) {
		vp->v[i].x -= med[0];
		vp->v[i].y -= med[1];
	}
}

void calcAngulos(stVetPto *vp) {
	int i, xx, yy;
	float h;
	for (i = 0; i < vp->n; i++) {
		xx = vp->v[i].x;
		yy = vp->v[i].y;
		h = (float)sqrt((double)(xx*xx + yy*yy));
		vp->v[i].ang = (float)acos((double)(xx/h));
		
		if (xx < 0) {
			if (yy >= 0) {
				vp->v[i].ang = (3*PI)/2 - vp->v[i].ang;
			} 
			else {
				vp->v[i].ang = 2*PI - vp->v[i].ang;
			}	
		}
		else {
			if (yy < 0) {
				vp->v[i].ang = 2*PI - vp->v[i].ang;
			}
		}
		vp->v[i].ang *= 180/PI;
	}	
}

int Pos(stVetPto *vet, int a, int b) {
	int piv = a;
	float aux;
	a++;
	while(a <= b) {
		while(vet->v[piv].ang >= vet->v[a].ang) {
			a++;
		}	
		while(vet->v[piv].ang < vet->v[b].ang) {
			b--;
		}
	    if(a < b) {
           aux = vet->v[a].ang;
           vet->v[a].ang = vet->v[b].ang;
           vet->v[b].ang = aux;
        }
	}
	return(b);
}

void ordeAngulo(stVetPto *vp, int a, int b) {
	int h;
	float aux;
	
	h = Pos(vp, a, b);
	
	aux = vp->v[a].x;
	vp->v[a].x = vp->v[h].x;
	vp->v[h].x = aux;
	
	aux = vp->v[a].y;
	vp->v[a].y = vp->v[h].y;
	vp->v[h].y = aux;
	
	aux = vp->v[a].ang;
	vp->v[a].ang = vp->v[h].ang;
	vp->v[h].ang = aux;
	
	if(h-1 > a) {
		ordeAngulo(vp, a, h-1);
	}
	if(h+1 < b) {
		ordeAngulo(vp, h+1, b);
	} 
}

int main() {
	float a, angI, angN;
	stVetPto vp;
	
	printf("Digite quantidade de pontos para seu poligono: ");
	scanf("%d", &(vp.n));
	
	vp.v = vetorPontos(vp.n);
	
	calcMediaVetor(&vp);
	
	calcAngulos(&vp);
	
	mostraPoligono(&vp);
	
	angN = vp.n -1;
	
	ordeAngulo(&vp, 0, angN);
	
	mostraPoligono(&vp);
	
	a = calcArea(&vp);
	
	printf("\nArea do poligono de %d pontos: %6.2f", vp.n, a);
	
	free(vp.v);
	
	return(0);
}

