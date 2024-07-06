#include <stdio.h>
#include <stdlib.h>
#include "AVL.h" // Inclui protótipos

//se x for maior que y a função retornará x, caso contrário, retornará y.
int maior(int x, int y) {
    return (x > y) ? x : y;
}

int altura_NO(struct NO* no) {
    if (no == NULL)     //vericifa se é nulo
        return 0;
    return no->alt; //retorna a altura do nó
}

int fatorBalanceamento_NO(struct NO* no) {
    if (no == NULL)
        return 0;
    //chama a função altura_NO para obter a altura da subárvore esquerda e direita de um nó.
    //subtrai a altura da subárvore direita da altura da subárvore esquerda e retorna o resultado.
    return altura_NO(no->esq) - altura_NO(no->dir);
}

void RotacaoLL(ArvAVL* A) {
    struct NO* B = (*A)->esq; // recebe o nó à esquerda do nó raiz
    (*A)->esq = B->dir; //O nó à esquerda do nó raiz agora aponta para o nó à direita do nó B
    B->dir = *A; //O nó à direita do nó B agora aponta para o nó raiz
    //recalcula altura
    (*A)->alt = maior(altura_NO((*A)->esq), altura_NO((*A)->dir)) + 1;
    B->alt = maior(altura_NO(B->esq), (*A)->alt) + 1;
    //o ponteiro raiz da árvore aponta para o nó B, pois este tornou-se o novo nó raiz após a rotação.
    *A = B;
}

void RotacaoRR(ArvAVL* A) {
    struct NO* B = (*A)->dir; // recebe o nó à direita do nó raiz
    (*A)->dir = B->esq; //O nó à direita do nó raiz agora aponta para o nó à esquerda do nó B
    B->esq = *A; //O nó à esquerda do nó B agora aponta para o nó raiz
        //recalcula altura
    (*A)->alt = maior(altura_NO((*A)->esq), altura_NO((*A)->dir)) + 1;
    B->alt = maior(altura_NO(B->dir), (*A)->alt) + 1;
    //o ponteiro raiz da árvore aponta para o nó B, pois este tornou-se o novo nó raiz após a rotação.
    *A = B;
}

//realiza uma rotação dupla (ou tripla)
void RotacaoLR(ArvAVL* A) {
    RotacaoRR(&(*A)->esq); //rotação simples à direita é realizada no nó à esquerda do nó raiz.
    RotacaoLL(A); //rotação simples à esquerda é realizada no nó raiz após a rotação simples à direita.
}

void RotacaoRL(ArvAVL* A) {
    RotacaoLL(&(*A)->dir); //rotação simples à esquerda é realizada no nó à direita do nó raiz
    RotacaoRR(A); // rotação simples à direita é realizada no nó raiz após a rotação simples à esquerda
}

ArvAVL* cria_ArvAVL() {
    ArvAVL* raiz = (ArvAVL*)malloc(sizeof(ArvAVL));
    if (raiz != NULL)
        *raiz = NULL;
    return raiz;
}

void libera_NO(struct NO* no) {
    if (no == NULL)
        return;
    libera_NO(no->esq);
    libera_NO(no->dir);
    free(no);
}

void libera_ArvAVL(ArvAVL* raiz) {
    if (raiz == NULL)
        return;
    libera_NO(*raiz);
    free(raiz);
}

int insere_ArvAVL(ArvAVL* raiz, int valor) {
    if (raiz == NULL)
        return 0;

    struct NO* novo = (struct NO*)malloc(sizeof(struct NO));
    if (novo == NULL)
        return 0;

    novo->info = valor;
    novo->alt = 1;  // Novo nó é inicializado com altura 1
    novo->dir = NULL;
    novo->esq = NULL;

    if (*raiz == NULL) {
        *raiz = novo;
        return 1;
    }

    struct NO* atual = *raiz;
    int res;

    if (valor < atual->info) {
        if ((res = insere_ArvAVL(&(atual->esq), valor)) == 1) {
            if (fatorBalanceamento_NO(atual) >= 2) {
                if (valor < (*raiz)->esq->info)
                    RotacaoLL(raiz);
                else
                    RotacaoLR(raiz);
            }
        }
    } else {
        if (valor > atual->info) {
            if ((res = insere_ArvAVL(&(atual->dir), valor)) == 1) {
                if (fatorBalanceamento_NO(atual) >= 2) {
                    if (valor > (*raiz)->dir->info)
                        RotacaoRR(raiz);
                    else
                        RotacaoRL(raiz);
                }
            }
        } else {
            free(novo);
            return 0;  // Valor duplicado
        }
    }

    atual->alt = maior(altura_NO(atual->esq), altura_NO(atual->dir)) + 1;
    return res;
}

struct NO* procuraMenor(struct NO* atual) {
    struct NO* no1 = atual, *no2 = atual->esq;
    while (no2 != NULL) {
        no1 = no2;
        no2 = no2->esq;
    }
    return no1;
}

int remove_ArvAVL(ArvAVL* raiz, int valor) {
    if (raiz == NULL)
        return 0;

    if (*raiz == NULL)
        return 0;  // Valor não existe

    int res;
    if (valor < (*raiz)->info) {
        if ((res = remove_ArvAVL(&(*raiz)->esq, valor)) == 1) {
            if (fatorBalanceamento_NO(*raiz) >= 2) {
                if (altura_NO((*raiz)->dir->esq) <= altura_NO((*raiz)->dir->dir))
                    RotacaoRR(raiz);
                else
                    RotacaoRL(raiz);
            }
        }
    } else if (valor > (*raiz)->info) {
        if ((res = remove_ArvAVL(&(*raiz)->dir, valor)) == 1) {
            if (fatorBalanceamento_NO(*raiz) >= 2) {
                if (altura_NO((*raiz)->esq->dir) <= altura_NO((*raiz)->esq->esq))
                    RotacaoLL(raiz);
                else
                    RotacaoLR(raiz);
            }
        }
    } else {
        if ((*raiz)->esq == NULL || (*raiz)->dir == NULL) {
            struct NO* no1 = *raiz;
            if ((*raiz)->esq != NULL)
                *raiz = (*raiz)->esq;
            else
                *raiz = (*raiz)->dir;
            free(no1);
        } else {
            struct NO* no1 = procuraMenor((*raiz)->dir);
            (*raiz)->info = no1->info;
            remove_ArvAVL(&(*raiz)->dir, no1->info);
            if (fatorBalanceamento_NO(*raiz) >= 2) {
                if (altura_NO((*raiz)->esq->dir) <= altura_NO((*raiz)->esq->esq))
                    RotacaoLL(raiz);
                else
                    RotacaoLR(raiz);
            }
        }
        if (*raiz != NULL)
            (*raiz)->alt = maior(altura_NO((*raiz)->esq), altura_NO((*raiz)->dir)) + 1;
        return 1;
    }

    if (*raiz != NULL)
        (*raiz)->alt = maior(altura_NO((*raiz)->esq), altura_NO((*raiz)->dir)) + 1;
    return res;
}

void ArvHierarqRec(struct NO* raiz, int nivel) {
    if (raiz == NULL) //verifica se o nó raiz é nulo
        return;

    //chama a si mesma para o nó à direita do nó raiz
    //continua até que todos os nós da árvore sejam visitados
    ArvHierarqRec(raiz->dir, nivel + 1);

    for (int i = 0; i < nivel; i++)
        printf("   ");

    printf("%d Nivel,   %d, Fator de Balanceamento: |%d|\n", (nivel+1), raiz->info, fatorBalanceamento_NO(raiz));

    ArvHierarqRec(raiz->esq, nivel + 1); //chama a si mesma para o nó à esquerda do nó raiz
}

void ArvHierarq(ArvAVL raiz) {
    ArvHierarqRec(raiz, 0); //chama a função auxiliar ArvHierarqRec para imprimir a hierarquia da árvore
}
