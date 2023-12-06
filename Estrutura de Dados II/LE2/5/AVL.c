#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "AVL.h"

//verifica se um caractere é uma letra
int isAlpha(char c) {
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
}

//se A for maior que B a função retornará A, caso contrário, retornará B.
int max(int a, int b) {
    return (a > b) ? a : b; //
}

//se nó for nulo a função retornará a altura -1, caso contrário, retornará a altura do nó.
int height(AVLNode *node) {
    return (node == NULL) ? -1 : node->height;
}

int getBalance(AVLNode *node) {
    if (node == NULL)
        return 0;
    return height(node->left) - height(node->right); //altura da esquerda menos a da direita
}

AVLNode *createNode(char *word) {
    //Cria um novo nó (node) chamado node e aloca espaço na memória para ele.
    AVLNode *node = (AVLNode *)malloc(sizeof(AVLNode));

    //strlen() é usada para calcular o comprimento da string word
    // valor retornado por strlen() é somado a 1 para alocar espaço adicional
    // para o caractere nulo ('\0') que marca o final da string
    char *lowerWord = (char *)malloc(strlen(word) + 1);
    int j = 0;

    // iterar sobre cada caractere da string word
    //criar uma nova string lowerWord que contém a versão em minúsculas da string word
    for (int i = 0; word[i] != '\0'; i++) {
        if (isAlpha(word[i])) {
            lowerWord[j++] = tolower(word[i]); //tolower pra deixar minuscula
        }
    }
    lowerWord[j] = '\0';
    //preenche os campos do nó
    node->word = lowerWord; //palavra com inicial minuscula
    node->count = 1;    //quantas palavras
    node->left = NULL;  //sem nós a esquerda
    node->right = NULL; //sem nós a direita
    node->height = 1;   //altura 1

    return node;
}

AVLNode *rightRotate(AVLNode *y) {
    // O ponteiro para o filho esquerdo do nó y é armazenado na variável x
    //O filho esquerdo do nó y é o nó que foi inserido recentemente.
    AVLNode *x = y->left;

    // ponteiro para o filho direito do nó x é armazenado na variável T2
    AVLNode *T2 = x->right;

    //T2 se torna o filho esquerdo do nó y
    x->right = y;
    y->left = T2;

    // alturas dos nós y e x são recalculadas usando a função max()
    y->height = max(height(y->left), height(y->right)) + 1;
    x->height = max(height(x->left), height(x->right)) + 1;

    //retornado como o novo nó raiz da subárvore, após a rotação
    return x;
}

AVLNode *leftRotate(AVLNode *x) {
    AVLNode *y = x->right; //ponteiro para o filho direito do nó x é armazenado na variável y
    AVLNode *T2 = y->left; //ponteiro para o filho esquerdo do nó y é armazenado na variável T2

    //T2 se torna o filho direito do nó x.
    //ponteiros dos nós x e y são trocados.
    //Agora, o nó y é o filho direito do nó x, e o nó x é o filho esquerdo do nó y
    y->left = x;
    x->right = T2;

     // alturas dos nós y e x são recalculadas usando a função max()
    x->height = max(height(x->left), height(x->right)) + 1;
    y->height = max(height(y->left), height(y->right)) + 1;

     //retornado como o novo nó raiz da subárvore, após a rotação
    return y;
}

AVLNode *insert(AVLNode *node, char *word) {
    if (node == NULL) //se estiver vazia
        return createNode(word); //cria um novo nó com a palavra

    char *lowerWord = (char *)malloc(strlen(word) + 1);
    int j = 0;

    // converte a palavra fornecida em minúsculas
    for (int i = 0; word[i] != '\0'; i++) {
        if (isAlpha(word[i])) {
            lowerWord[j++] = tolower(word[i]);
        }
    }
    lowerWord[j] = '\0';

    //Se a palavra for menor, a função insere a
    //palavra na subárvore esquerda do nó atual.
    if (strcmp(lowerWord, node->word) < 0)
        node->left = insert(node->left, lowerWord);
    //Se a palavra for maior, a função insere a
    //palavra na subárvore direita do nó atual
    else if (strcmp(lowerWord, node->word) > 0)
        node->right = insert(node->right, lowerWord);
    //Se a palavra já existir na árvore
    else {
        node->count++; // a função incrementa a contagem de ocorrências dessa palavra
        free(lowerWord);
        return node; //retorna o nó atual sem realizar qualquer rotação
    }

    //atualiza a altura do nó atual, calculando a altura máxima entre
    //as subárvores esquerda e direita do nó.
    node->height = 1 + max(height(node->left), height(node->right));

    int balance = getBalance(node);

    //a subárvore esquerda do nó está muito pesada e
    //a função realiza uma rotação à direita para balancear a árvore
    if (balance > 1 && strcmp(lowerWord, node->left->word) < 0)
        return rightRotate(node);

    //a subárvore direita do nó está muito pesada e
    //a função realiza uma rotação à esquerda para balancear a árvore.
    if (balance < -1 && strcmp(lowerWord, node->right->word) > 0)
        return leftRotate(node);

    //atualiza informações do nó
    if (balance > 1 && strcmp(lowerWord, node->left->word) > 0) {
        node->left = leftRotate(node->left);
        return rightRotate(node);
    }

    if (balance < -1 && strcmp(lowerWord, node->right->word) < 0) {
        node->right = rightRotate(node->right);
        return leftRotate(node);
    }

    return node;
}

//inserção em ordem
void inOrder(AVLNode *root) {
    if (root != NULL) {
        inOrder(root->left);
        printf("%s (%d)\n", root->word, root->count);
        inOrder(root->right);
    }
}

//libera memória
void freeTree(AVLNode *root) {
    if (root != NULL) {
        freeTree(root->left);
        freeTree(root->right);
        free(root->word);
        free(root);
    }
}
