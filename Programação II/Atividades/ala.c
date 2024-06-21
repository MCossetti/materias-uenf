#include <stdio.h>
#include <stdlib.h>
//---------------( BEGING arvore )----------------
// define tipo de nó da arvore
typedef struct Node
{
	char c; 			// caractere
	int f;				// frequncia
	struct Node *esq, 
				*dir;
} stNode;
// Estrutura da raiz
typedef struct DirTree
{
	int n;			// numero de elementos
	stNode *lst;	// aponta ao 1ro elemento da lista
} stDirTree;
//---------------( END arvore )----------------

// =====>  processos <=====
stNode *insereNode(char cc) {
	stNode *no = (stNode*) malloc(sizeof(stNode));
	no->c = cc;
	no->f = 1;
	no->dir = NULL;
	no->esq = NULL;
	
	return(no);
}

int registraData(stNode *node, char cc) {
	int w;
	if(node->c == cc) {    // atualiza
		node->f +=1;
		w = 0;
	}
	else {
		if(node->c > cc) {
			if(node->esq) 
				w = registraData(node->esq, cc);  // recursão
			else {
				node->esq = insereNode(cc);      // cria NOVO no
				w = 1;
			}
		}
		else {
			if(node->dir) 
				w = registraData(node->dir, cc);  // recursão
			else {
				node->dir = insereNode(cc);       // cria NOVO no
				w = 1;
			}			
		}
	}
	return (w);
}

void regCaractereArvore(stDirTree *dirTree, char cc){
	int wnew;
	
	if(dirTree->lst) {			// EXISTE a arvore
		wnew = registraData(dirTree->lst, cc);
		if(wnew)
			dirTree->n +=1;
	}
	else {						// NAO existe a arvore
		dirTree->lst = insereNode(cc);
		dirTree->n +=1;
	}
}

void mostraOrdenada(stNode *no) {
	if(no) {
		mostraOrdenada(no->esq);
		printf(" (%c: %d vezes) \n ", no->c, no->f);
		mostraOrdenada(no->dir);
	}
}

void mostraDadosArvore(stDirTree* arv)
{
	printf("\n ====> São %d tipos de caracteres <====== \n", arv->n);
	mostraOrdenada(arv->lst);		
}

stNode* liberaNodesArvore (stNode* no)
{
	if(!no)
		return NULL;
	no->esq = liberaNodesArvore (no->esq);
	no->dir = liberaNodesArvore (no->dir);
	free(no);
	return NULL;
}
// ---------------
// main 
// ---------------
void main(void)
{
	FILE *pArq;
	
	stDirTree dirTree;	 	// raiz da árvore
	char cc;
	char nomArq[] = "charFreqTexto.txt";

	pArq=fopen(nomArq,"rt");
	
	if(pArq==NULL)
	{
		printf("Error en la apertura del archivo %s \n", nomArq);
		exit(0);
	}
    
    dirTree.n = 0;
    dirTree.lst = NULL;
    
	fscanf(pArq, "%c", &cc);	
	while(!feof(pArq))
	{
		regCaractereArvore(&dirTree, cc);
		fscanf(pArq, "%c", &cc);
	}
	fclose(pArq);	
	
	mostraDadosArvore(&dirTree);
	
	dirTree.lst = liberaNodesArvore(dirTree.lst);
}
