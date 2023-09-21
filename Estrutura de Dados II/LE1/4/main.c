#include <stdio.h>
#include <stdlib.h>
#include "ordenacaoexterna.h"

int main() {
    CreateFile("data.txt");
    
    mergeSortExterno("data.txt");
    
    checkOrderedFile("data.txt");
    
    return 1;
}
