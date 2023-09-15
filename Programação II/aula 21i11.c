#include <stdio.h>
#include <stdlib.h>

//---------------( BEGING arvore)--------------------

// define tipo de nó da arvore

typedef struct data {
	char c;		//simbolo
	int f;      //frequencia
}stData;

typedef struct Node {
	stData dado;
	struct Node *ProxEsq,
				*ProxDir;
}stNode;

//Estrutura da raiz
typedef struct raizEst {
	int n;				//numero de elementos
	stNode *lst;		//aponta ao 1ro elemento da lista
}stRaizEst;

//---------------( END arvore )------------------------

//---------------> PROCESSOS <-------------------------


void registraLetraArvore(stRaizEst* arv, char cc) {
	stNode *no;
	if (!arv->lst) {
		no = (stNode*) malloc(sizeof(stNode));
		no->dado.c = cc;
		no->dado.f = 1;
		no->ProxEsq = NULL;
		no->ProxDir = NULL;
		
		arv->lst = no;
		arv->n += 1;
	}
	else {
		no = arv->lst;
		insereNode(arv, no);
	}
}

void mostraDadosArvore(dirTree* arv) {
	stNode *no;
	no = arv->lst;
	
	while(no) {
		if((no->ProxEsq == NULL) && (no->ProxDir == NULL)) {
			
		}
	}
}

int main(void) {
	FILE *pArq;
	
	stRaizEsq dirTree;	// raiz árvore
	char cc;
	
	if((pArq=fopen("charFrenqTexto.txt","rt"))==NULL) {
		printf("Erro na abertura do arquivo %s \n", nomArq);
		return NULL;
	}
	
	//iniciar raiz
	dirTree.n = 0;
	dirTree.lst = NULL;
	
	fscan(pArq, "%c", &cc);
	
	while(!feof(pArq)) {
		registraLetraArvore(dirTree, cc);
		fscanf(pArq, "%c", &cc);
	}
	fclose(pArq);
	
	mostraDadosArvore(dirTree);
	
	dirTree.lst = liberaNodesArvore(dirTree.lst);
	
	return 0;
}
