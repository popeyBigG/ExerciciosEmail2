/* Programa que receba nome completo e,
 
 - Calcule quantas Vogais e Consotantes contem
 - Realizar Printf do Primeiro nome
 - Realizar Printf do "Apelido"
 - Mostrar 1º Nome de trás para a frente                    ** FGETS É O MAIS SEGURO QUE SCANF DOIDERA (scanf ("%[^\n]%*c", variavel);**
*/

#include <stdio.h>

int main() {

// Definição das variaveis
char nome_completo[120] = "Desconhecido";   
char nome_primeiro[120] = "Desconhecido";
int contagem_vogais, contagem_consoantes;
int nome_length;

contagem_vogais = contagem_consoantes = nome_length = 0;


// Pedir nome completo para o usuário
printf("Insira o nome completo: ");
scanf("%[^\n]%*c", &nome_completo);


// Contar quantas vogais & consoantes existem
for (int x = 0; nome_completo[x] != '\0'; x++) {

    if (nome_completo[x] == 'a' || nome_completo[x] == 'A' || nome_completo[x] == 'e' || nome_completo[x] == 'E' || nome_completo[x] == 'i' || nome_completo[x] == 'I' || nome_completo[x] == 'o' || nome_completo[x] == 'O' || nome_completo[x] == 'u' || nome_completo[x] == 'U') {
    
    contagem_vogais++;

    } else if (nome_completo[x] >= 'a' && nome_completo[x] <= 'z' || nome_completo[x] >= 'A' && nome_completo[x] <= 'Z') {

    contagem_consoantes++;

    }

}

printf("\nVogais: %d\nConsoantes: %d\n", contagem_vogais, contagem_consoantes);


// Imprimir o Nome
printf("Nome: ");
for (int x = 0; nome_completo[x] != ' '; x++) {

    printf("%c", nome_completo[x]);

}
                            

// Imprimir o Apelido
printf("\tApelido: ");
for (int x = 0; nome_completo[x] != '\0'; x++) {

    if (nome_completo[x] == ' ') {

        do {

            x++;
            printf("%c", nome_completo[x]);   
            
        } while (nome_completo[x] != '\0');

    }
} 


// Imprimir o Nome em reverso
printf("\nReverse:");
for (int y = 0; nome_completo[y] != ' '; y++) {

    nome_length++;

}


for (int z = nome_length; z >= 0; z--) {

    printf("%c", nome_completo[z]);
    

}


printf("\n");

return 0;
}