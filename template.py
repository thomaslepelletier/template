#!/usr/bin/env python3

"""
Nom du script: script.py
Description: [Brève description de ce que fait le script]
Auteur: [Votre nom]
Date de création: [Date de création]
Version: [Version du script]
Licence: [Licence du script]
"""

import argparse

def parse_arguments():
    """Parse les arguments de la ligne de commande."""
    parser = argparse.ArgumentParser(description='[Description détaillée du script]')
    parser.add_argument('--param1', required=True, type=str, help='Description du premier paramètre')
    parser.add_argument('--param2', required=False, type=int, default=0, help='Description du deuxième paramètre')
    parser.add_argument('--version', action='version', version='%(prog)s 1.0')
    return parser.parse_args()

def main():
    """Point d'entrée principal du script."""
    args = parse_arguments()

    # Validation des paramètres
    if args.param1 == '':
        print("Le paramètre --param1 est obligatoire.")
        exit(1)

    if args.param2 < 0:
        print("Le paramètre --param2 doit être un nombre positif.")
        exit(1)

    # Logique principale du script
    print(f"Paramètre 1: {args.param1}")
    print(f"Paramètre 2: {args.param2}")

    # Ajoutez ici la logique principale de votre script
    example_function(args.param1, args.param2)

def example_function(param1, param2):
    """Une fonction d'exemple."""
    print(f"Exécution de example_function avec les paramètres: {param1}, {param2}")
    # Ajoutez ici le code de la fonction

if __name__ == "__main__":
    main()
