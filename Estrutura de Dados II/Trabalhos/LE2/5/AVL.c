#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "AVL.h"

//verifica se um caractere � uma letra
int isAlpha(char c) {
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
}

//se A for maior que B a fun��o retornar� A, caso contr�rio, retornar� B.
int max(int a, int b) {
    return (a > b) ? a : b; //
}

//se n� for nulo a fun��o retornar� a altura -1, caso contr�rio, retornar� a altura do n�.
int height(AVLNode *node) {
    return (node == NULL) ? -1 : node->height;
}

int getBalance(AVLNode *node) {
    if (node == NULL)
        return 0;
    return height(node->left) - height(node->right); //altura da esquerda menos a da direita
}

AVLNode *createNode(char *word) {
    //Cria um novo n� (node) chamado node e aloca espa�o na mem�ria para ele.
    AVLNode *node = (AVLNode *)malloc(sizeof(AVLNode));

    //strlen() � usada para calcular o comprimento da string word
    // valor retornado por strlen() � somado a 1 para alocar espa�o adicional
    // para o caractere nulo ('\0') que marca o final da string
    char *lowerWord = (char *)malloc(strlen(word) + 1);
    int j = 0;

    // iterar sobre cada caractere da string word
    //criar uma nova string lowerWord que cont�m a vers�o em min�sculas da string word
    for (int i = 0; word[i] != '\0'; i++) {
        if (isAlpha(word[i])) {
            lowerWord[j++] = tolower(word[i]); //tolower pra deixar minuscula
        }
    }
    lowerWord[j] = '\0';
    //preenche os campos do n�
    node->word = lowerWord; //palavra com inicial minuscula
    node->count = 1;    //quantas palavras
    node->left = NULL;  //sem n�s a esquerda
    node->right = NULL; //sem n�s a direita
    node->height = 1;   //altura 1

    return node;
}

AVLNode *rightRotate(AVLNode *y) {
    // O ponteiro para o filho esquerdo do n� y � armazenado na vari�vel x
    //O filho esquerdo do n� y � o n� que foi inserido recentemente.
    AVLNode *x = y->left;

    // ponteiro para o filho direito do n� x � armazenado na vari�vel T2
    AVLNode *T2 = x->right;

    //T2 se torna o filho esquerdo do n� y
    x->right = y;
    y->left = T2;

    // alturas dos n�s y e x s�o recalculadas usando a fun��o max()
    y->height = max(height(y->left), height(y->right)) + 1;
    x->height = max(height(x->left), height(x->right)) + 1;

    //retornado como o novo n� raiz da sub�rvore, ap�s a rota��o
    return x;
}

AVLNode *leftRotate(AVLNode *x) {
    AVLNode *y = x->right; //ponteiro para o filho direito do n� x � armazenado na vari�vel y
    AVLNode *T2 = y->left; //ponteiro para o filho esquerdo do n� y � armazenado na vari�vel T2

    //T2 se torna o filho direito do n� x.
    //ponteiros dos n�s x e y s�o trocados.
    //Agora, o n� y � o filho direito do n� x, e o n� x � o filho esquerdo do n� y
    y->left = x;
    x->right = T2;

     // alturas dos n�s y e x s�o recalculadas usando a fun��o max()
    x->height = max(height(x->left), height(x->right)) + 1;
    y->height = max(height(y->left), height(y->right)) + 1;

     //retornado como o novo n� raiz da sub�rvore, ap�s a rota��o
    return y;
}

AVLNode *insert(AVLNode *node, char *word) {
    if (node == NULL) //se estiver vazia
        return createNode(word); //cria um novo n� com a palavra

    char *lowerWord = (char *)malloc(strlen(word) + 1);
    int j = 0;

    // converte a palavra fornecida em min�sculas
    for (int i = 0; word[i] != '\0'; i++) {
        if (isAlpha(word[i])) {
            lowerWord[j++] = tolower(word[i]);
        }
    }
    lowerWord[j] = '\0';

    //Se a palavra for menor, a fun��o insere a
    //palavra na sub�rvore esquerda do n� atual.
    if (strcmp(lowerWord, node->word) < 0)
        node->left = insert(node->left, lowerWord);
    //Se a palavra for maior, a fun��o insere a
    //palavra na sub�rvore direita do n� atual
    else if (strcmp(lowerWord, node->word) > 0)
        node->right = insert(node->right, lowerWord);
    //Se a palavra j� existir na �rvore
    else {
        node->count++; // a fun��o incrementa a contagem de ocorr�ncias dessa palavra
        free(lowerWord);
        return node; //retorna o n� atual sem realizar qualquer rota��o
    }

    //atualiza a altura do n� atual, calculando a altura m�xima entre
    //as sub�rvores esquerda e direita do n�.
    node->height = 1 + max(height(node->left), height(node->right));

    int balance = getBalance(node);

    //a sub�rvore esquerda do n� est� muito pesada e
    //a fun��o realiza uma rota��o � direita para balancear a �rvore
    if (balance > 1 && strcmp(lowerWord, node->left->word) < 0)
        return rightRotate(node);

    //a sub�rvore direita do n� est� muito pesada e
    //a fun��o realiza uma rota��o � esquerda para balancear a �rvore.
    if (balance < -1 && strcmp(lowerWord, node->right->word) > 0)
        return leftRotate(node);

    //atualiza informa��es do n�
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

//inser��o em ordem
void inOrder(AVLNode *root) {
    if (root != NULL) {
        inOrder(root->left);
        printf("%s (%d)\n", root->word, root->count);
        inOrder(root->right);
    }
}

//libera mem�ria
void freeTree(AVLNode *root) {
    if (root != NULL) {
        freeTree(root->left);
        freeTree(root->right);
        free(root->word);
        free(root);
    }
}
