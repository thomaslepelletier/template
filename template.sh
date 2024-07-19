#!/bin/bash

# =============================================================================
# Nom du Script   : VotreScript.sh
# Description     : [Brève description de ce que fait le script]
# Auteur          : [Votre nom]
# Date de création: [Date de création]
# Version         : [Version du script]
# Licence         : [Licence du script]
# =============================================================================

# =============================================================================
# SYNOPSIS
# 
#    ./VotreScript.sh [options]
#
# Options:
#    -p1 | --param1    Description du premier paramètre (obligatoire)
#    -p2 | --param2    Description du deuxième paramètre (optionnel)
#    -h  | --help      Affiche la documentation
#
# DESCRIPTION
#
#    [Description détaillée du script, de son objectif et de son fonctionnement]
#
# EXEMPLES
#
#    ./VotreScript.sh --param1 "Valeur1" --param2 "Valeur2"
#    [Description de ce que fait cet exemple]
#
# =============================================================================

# =============================================================================
# Fonction: afficher_aide
# Description: Affiche l'aide du script
# =============================================================================
afficher_aide() {
    cat << EOF
Usage: ${0##*/} [options]

Options:
    -p1 | --param1    Description du premier paramètre (obligatoire)
    -p2 | --param2    Description du deuxième paramètre (optionnel)
    -h  | --help      Affiche la documentation

Description:
    [Description détaillée du script, de son objectif et de son fonctionnement]

Exemples:
    ${0##*/} --param1 "Valeur1" --param2 "Valeur2"
    [Description de ce que fait cet exemple]

Auteur:
    [Votre nom]

Version:
    [Version du script]

Licence:
    [Licence du script]
EOF
}

# =============================================================================
# Initialisation des variables
# =============================================================================
PARAM1=""
PARAM2=""

# =============================================================================
# Lecture des paramètres
# =============================================================================
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -p1|--param1)
            PARAM1="$2"
            shift
            ;;
        -p2|--param2)
            PARAM2="$2"
            shift
            ;;
        -h|--help)
            afficher_aide
            exit 0
            ;;
        *)
            echo "Option inconnue: $1"
            afficher_aide
            exit 1
            ;;
    esac
    shift
done

# =============================================================================
# Validation des paramètres
# =============================================================================
if [[ -z "$PARAM1" ]]; then
    echo "Erreur: Le paramètre --param1 est obligatoire."
    afficher_aide
    exit 1
fi

if [[ -n "$PARAM2" && "$PARAM2" -lt 0 ]]; then
    echo "Erreur: Le paramètre --param2 doit être un nombre positif."
    afficher_aide
    exit 1
fi

# =============================================================================
# Section : Initialisation
# =============================================================================
echo "Initialisation du script..."

# (Ajoutez ici les initialisations nécessaires)

# =============================================================================
# Section : Fonctions
# =============================================================================
example_function() {
    local example_param="$1"
    echo "Exécution de example_function avec le paramètre $example_param"
    
    # (Ajoutez ici le code de la fonction)
}

# =============================================================================
# Section : Logique principale du script
# =============================================================================
echo "Exécution du script principal..."

# (Ajoutez ici la logique principale du script)
example_function "$PARAM1"

# =============================================================================
# Section : Nettoyage
# =============================================================================
echo "Nettoyage et fin du script..."

# (Ajoutez ici le nettoyage si nécessaire)

echo "Script terminé avec succès."
exit 0
