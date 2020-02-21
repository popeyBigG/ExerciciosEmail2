// Programa que indique quantos caracteres e quantos números existem na seguinte frase

#include <stdio.h>

int main() {

int contagem = 0; int contagem_numeros = 0; int contagem_letras = 0;
char frase[256] = "apenas um teste realizado no dia 18 fevereiro de 2020";


printf("apenas um teste realizado no dia 18 fevereiro de 2020.\n");


for (int x = 0; frase[x] != '\0'; x++) {

if (frase[x] == '1' || frase[x] == '2' || frase[x] == '3' || frase[x] == '4' || frase[x] == '5' || frase[x] == '6' || frase[x] == '7' || frase[x] == '8' || frase[x] == '9' || frase[x] == '0') {

contagem_numeros++;

} else if (frase[x] != ' ') {

contagem_letras++;
contagem++;

} else {

contagem++;

}

}
printf("\nNº caracteres: %d\tNº letras: %d\tNº números: %d\n", contagem, contagem_letras, contagem_numeros);

return 0;
}