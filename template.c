#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>

/**
 * Nom du fichier : main.c
 * Description   : [Brève description de ce que fait le programme]
 * Auteur        : [Votre nom]
 * Date de création : [Date de création]
 * Version       : [Version du programme]
 * Licence       : [Licence du programme]
 */

/**
 * Fonction pour traiter les paramètres
 *
 * @param param1 Premier paramètre
 * @param param2 Deuxième paramètre
 */
void process_params(const char *param1, int param2) {
    if (param1 == NULL) {
        fprintf(stderr, "Le paramètre --param1 est obligatoire.\n");
        exit(EXIT_FAILURE);
    }

    if (param2 < 0) {
        fprintf(stderr, "Le paramètre --param2 doit être un nombre positif.\n");
        exit(EXIT_FAILURE);
    }

    // Appel de la fonction principale
    printf("Paramètre 1 : %s\n", param1);
    printf("Paramètre 2 : %d\n", param2);
}

/**
 * Fonction principale
 */
int main(int argc, char *argv[]) {
    int opt;
    char *param1 = NULL;
    int param2 = 0;

    // Définition des options
    while ((opt = getopt(argc, argv, "p:n:")) != -1) {
        switch (opt) {
            case 'p':
                param1 = optarg;
                break;
            case 'n':
                param2 = atoi(optarg);
                break;
            default:
                fprintf(stderr, "Usage: %s -p param1 [-n param2]\n", argv[0]);
                exit(EXIT_FAILURE);
        }
    }

    // Traitement des paramètres
    process_params(param1, param2);

    return EXIT_SUCCESS;
}
