#include <stdio.h>
#include <stdlib.h>
#include "ordenacaoexterna.h"

#define N 50 // Tamanho m�ximo do array

// Estrutura para gerenciar os buffers
typedef struct file{
    FILE *f;
    int pos, MAX, *buffer;
}stFile;

//Fun��es para comparar valores
int compare(const void *a, const void *b){
    if(*(int*)a == *(int*)b)
        return 0; 	// Igual
    if(*(int*)a < *(int*)b)
        return -1; //Menor
    else
        return 1; //maior
}

void CreateFile(char *name){
    int i;
	FILE *f = fopen(name, "w");		//pode escrever "w"
    srand(time(NULL));
    for(i=0; i < 500; i++){ 		// gera arquivo testes 500 valores aleat�rios
        fprintf(f, "%d\n", rand()%200);
    }
    fprintf(f, "%d", rand()%200); 
    fclose(f);
}

void mergeSortExterno(char *name){
    char novo[20]; 
    int numFiles = CreateSortFiles(name); // Retorna numero de arquivos criados
    int K = (N / numFiles + 1); // Tamanho k dos Buffers 

    remove(name);	//apaga arquivo original
    merge(name, numFiles, K); // Junta no arquivo original os numFiles onde cada um tem k elementos m�ximo
}

int CreateSortFiles(char *name){
    int array[N], count = 0, total = 0; // Vetor tamanho n
    char novo_file[20];
    FILE *f = fopen(name, "r");
    while(!feof(f)){ 				// Enquanto n�o acabar o arquivo
        fscanf(f, "%d", &array[total]); // le um valor
        total++;						//conta mais um valor lido
        if(total == N){ 				//se o total de valor lidos � igual a n o vetor est� cheio SALVA O ARQUIVO
            count++;
            sprintf(novo_file, "Temp%d.txt", count); // Cria arquivos tempor�rios
            qsort(array, total, sizeof(int), compare); // Ordena o vetor
            SaveFile(novo_file, array, total, 0); 	//Salva o arquivo
            total = 0; 								// zera o total
        }
    }

    if (total > 0){ // Verifica se sobrou algum dado SAVE THE FILE
        count++;
        sprintf(novo_file, "Temp%d.txt", count);	 // gera novo arquivo tempor�rio
        qsort(array, total, sizeof(int), compare); // ordena os dados restantes 
        SaveFile(novo_file, array, total, 0); 		// salva o arquivo
    }
    fclose(f);	//fecha o arquivo
    return count; // retorna quantos arquivos foram gerados
}

void SaveFile(char *name, int *array, int size, int FlagBreakLine){
    int i;
	FILE *F = fopen(name, "a");
	
	//Salva no arquivo os valores
    for(i=0; i< size-1; i++){
        fprintf(F, "%d\n", array[i]);
    }

    if(FlagBreakLine == 0){		//controla a mudan�a de linha no final do arquivo
        fprintf(F, "%d", array[size-1]);
    }else{
        fprintf(F, "%d\n", array[size-1]);
    }
    fclose(F);	//fecha o arquivo
}


void merge(char *name, int numFiles, int K){
    char novo[20];
    int *buffer = (int*)malloc(sizeof(int) * K); // buffer de saida
	int i;
	
    stFile* file;	//vetor da estrutura file
    file = (stFile*)malloc(numFiles*sizeof(stFile));

	//Para cada arquivo ordenado
    for(i=0; i<numFiles; i++){
        sprintf(novo, "Temp%d.txt", i+1);
        file[i].f = fopen(novo, "r"); //abre o arquivo
        file[i].MAX = 0; //define max e pos = 0
        file[i].pos = 0;
        file[i].buffer = (int*)malloc(K*sizeof(int)); //define buffer = vetor tamanho k
        fillBuffer(&file[i], K); // Preenche buffer
    }

	// Agora todos os buffers est�o cheios, ent�o precisa encontrar o menor

    int lower, bufferQty = 0;
    while(findLower(file, numFiles, K, &lower) == 1){ //procura o menor dentro dos arquivos abertos
        buffer[bufferQty] = lower;	//guarda o menor na pr�xima posi��o do buffer
        bufferQty++;	//pula para a pr�xima posi��o
        if(bufferQty == K){ // verifica se est� cheio
            SaveFile(name, buffer, bufferQty, 1); // Salva o arquivo
            bufferQty = 0; // zera para come�ar encher novamente
        }
    }
    
	// Se restarem alguns dados do buffer de saida
    if(bufferQty != 0){
        SaveFile(name, buffer, bufferQty, 1);	//salva os dados no buffer de saida
    }

	//libera os buffers de entrada e os de saida
    for(i=0; i<numFiles; i++){
        free(file[i].buffer);
    }
    free(file);
    free(buffer);
}


int findLower(stFile* file, int numFiles, int K, int* lower){
    int index = -1; //Inicializa o index como -1.
	int i;
    // Procurar o menor elemento na primeira posi��o de cada buffer
    for (i = 0; i < numFiles; i++){
        if (file[i].pos < file[i].MAX){		
            if (index == -1){	//foi possivel achar um elemento ou n�o
                index = i; 
            }else{
                if (file[i].buffer[file[i].pos] < file[index].buffer[file[index].pos]){ 
                    index = i;
                }
            }
        }
    }
    
    //achou o menor, atualiza a posi��o e enche se estiver vazio
    if(index != -1){
        *lower = file[index].buffer[file[index].pos];
        file[index].pos++;
        if(file[index].pos == file[index].MAX) //Ent�o est� cheio o buffer
            fillBuffer(&file[index], K); //Preenche um novo buffer 
        return 1;	//achou menor
    }else{
        return 0;	//N�o acho menor
    }
}

void fillBuffer(stFile *file, int K){
    int i;
    if(file->f == NULL) // Verifica se o arquivo est� aberto ou n�o
        return;

    file->pos = 0;	//inicializa em 0
    file->MAX = 0;
    
    for(i=0; i<K; i++){
        if(!feof(file->f)){ //verifica se n�o chegou no final do arquivo
            fscanf(file->f,"%d",&file->buffer[file->MAX]); //le e coloca no buffer
            file->MAX++;	//passa o max para frente
        }else{ // N�o h� mais elementos. Fechar ARQUIVO
            fclose(file->f);
            file->f = NULL;
            break;
        }
    }
}

//verifique o arquivo solicitado
void checkOrderedFile(char *filename) {
    int value1, value2, error = 0;
    FILE *file = fopen(filename, "r"); // Abre o arquivo
    fscanf(file, "%d", &value1);
    while (!feof(file)) {
        fscanf(file, "%d", &value2); // pega o valor
        if (value2 < value1) { //Compara se � menor ou maior
            error = 1;
            break;
        }
    }
    fclose(file); //fecha o arquivo
    if (error)
        printf("Values out of order!\n");
    else
        printf("File correctly ordered!\n");
}
