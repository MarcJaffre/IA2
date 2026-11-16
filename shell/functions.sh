############################################################################################################
#                                 Arrête le script immédiatement en cas d'erreur                           #
############################################################################################################
set -e

############################################################################################################
#                                 TOUT CE QUI CONCERNE LE MENU UTILISATEUR                                 #
############################################################################################################
====================================================================================================================================================================
# Fonction d'affichage et de saisie
clear;
BASE_MENU_SELECTION() {
    clear
    echo "================================================="
    echo "          MENU PRINCIPAL                         "
    echo "================================================="
    echo "1) Menu 1 : Installation Dependances"
    echo "2) Menu 2 : Construction de LLAMA"
    echo "3) Menu 3 : Construction de OpenWebui"
    echo "================================================="
    echo "A) Menu A: Installation du service Llama"
    echo "B) Menu B: Installation du service OpenWebui"
    echo "C) Menu C: Désinstallation du service Llama"
    echo "D) Menu D: Désinstallation du service OpenWebui"   
    echo "================================================="
    echo "M) Menu M: Lancer le téléchargement des modèles"   
    echo "================================================="
    
    echo "X) Menu X : Installation de GPU-Unlock Nvidia"
    echo "R) Menu R : Redémarrage de la machine"
    echo "================================================="
    echo "q) Quitter"
    # Lecture de la réponse sur la même ligne
    echo "";
    read -p "Sélectionner votre choix ? " REPONSE
    echo "";
}

# ====================================================================================================================================================================
# Fonction gérant la boucle et le traitement du choix
BASE_CHOIX() {
    while true; do
        # Appel de l'affichage du menu
        BASE_MENU_SELECTION
        # Analyse de la variable $REPONSE
        case "$REPONSE" in
            # ========================================================================================================
            0)
               read -p "Appuyez sur Entrée pour continuer..."
               ;;
            # ========================================================================================================
            # Choix incorrect
            *)
                echo "Erreur : Choix invalide ($REPONSE). Veuillez réessayer."
                sleep 2
                ;;
            # ========================================================================================================
        esac
    done
}

############################################################################################################
#                                 TOUT CE QUI CONCERNE L'APPLICATION LLAMA.CPP                             #
############################################################################################################

############################################################################################################
#                                 TOUT CE QUI CONCERNE L'APPLICATION OPENWEBUI                             #
############################################################################################################
