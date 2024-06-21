#include <stdio.h>
#include <string.h>
#include <ctype.h>

int palindromo(char *s, int inicio, int fim)
{
    if (inicio >= fim) // Caso base: string vazia ou de tamanho 1
        return 1;

    // Ignorar espa�os em branco e diferen�as entre letras mai�sculas e min�sculas
    while (isspace(s[inicio]))
        inicio++;
    while (isspace(s[fim]))
        fim--;
    if (tolower(s[inicio]) == tolower(s[fim]))
        return palindromo(s, inicio+1, fim-1); // Verificar se o restante da string � pal�ndromo
    else
        return 0; // N�o � pal�ndromo
}

int main()
{
    char frase[1000];
    printf("Digite uma frase: ");
    fgets(frase, 1000, stdin); // L� a frase com espa�os em branco
    frase[strcspn(frase, "\n")] = '\0'; // Remove o \n do final da frase, se houver

    if (palindromo(frase, 0, strlen(frase)-1))
        printf("A frase \"%s\" eh palindromo\n", frase);
    else
        printf("A frase \"%s\" nao eh palindromo\n", frase);

    return 0;
}


