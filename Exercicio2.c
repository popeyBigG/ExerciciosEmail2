// Programa que receba 10 números inteiros do utilizador e que retorne qual o maior número introduzido.

#include <stdio.h>

int main() {

const int vezes_numero = 10; 
int numero[vezes_numero];
int maior;
int i = 0;

maior = 0;

for (int x = 1; x <= vezes_numero; x++) {

printf("Insira o %dº número: ", x);
scanf(" %d", &numero[i]);

i++;

}

i = 0;

for (int z = 1; z <= vezes_numero; z++) {


    if (numero[i] >= numero[z]) {
        maior = numero[i];
    } else {
        maior = numero[z];
    }

    i++;

}

printf("Numero maior inserido: %d\n", maior);

return 0;
}