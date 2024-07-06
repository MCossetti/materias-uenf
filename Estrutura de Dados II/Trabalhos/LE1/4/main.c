#include <stdio.h>
#include <stdlib.h>
#include "ordenacaoexterna.h"

int main(){
    CreateFile("dados.txt");
    
    mergeSortExterno("dados.txt");
    
    checkOrderedFile("dados.txt");
}
