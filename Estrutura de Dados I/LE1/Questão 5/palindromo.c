#include <stdio.h>
#include <string.h>
#include <ctype.h>

int palindromo(char *s, int inicio, int fim)
{
    if (inicio >= fim) // Caso base: string vazia ou de tamanho 1
        return 1;

    // Ignorar espaços em branco e diferenças entre letras maiúsculas e minúsculas
    while (isspace(s[inicio]))
        inicio++;
    while (isspace(s[fim]))
        fim--;
    if (tolower(s[inicio]) == tolower(s[fim]))
        return palindromo(s, inicio+1, fim-1); // Verificar se o restante da string é palíndromo
    else
        return 0; // Não é palíndromo
}

int main()
{
    char frase[1000];
    printf("Digite uma frase: ");
    fgets(frase, 1000, stdin); // Lê a frase com espaços em branco
    frase[strcspn(frase, "\n")] = '\0'; // Remove o \n do final da frase, se houver

    if (palindromo(frase, 0, strlen(frase)-1))
        printf("A frase \"%s\" eh palindromo\n", frase);
    else
        printf("A frase \"%s\" nao eh palindromo\n", frase);

    return 0;
}


