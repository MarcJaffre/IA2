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
               echo "Dossier de travail: $WORKDIR | $WORKDIR_FINAL";
               echo "GIT LLAMA : $GITHUB_LLAMA";
               echo "";
               read -p "Appuyez sur Entrée pour continuer..."
               ;;
            # ========================================================================================================
            # Installation Dependances
            1)
               bash ${WORKDIR}/workspaces/base/install_packages.sh 1>/dev/null;
               echo "";
               echo "---------------------------------------------------------------------------";
               read -p "Appuyez sur Entrée pour continuer..."
               ;;
            # ========================================================================================================
            # Construction de LLAMA"
            2)
               bash ${WORKDIR}/workspaces/llama/build.sh;
               read -p "Appuyez sur Entrée pour continuer..."
               ;;
            # ========================================================================================================
            # Construction de OpenWebui
            3)
               echo "-> Vous avez choisi le Menu 3."
               read -p "Appuyez sur Entrée pour continuer..."
               ;;
            # ========================================================================================================
            # Installation du service Llama
            a|A)
               bash ${WORKDIR}/workspaces/llama/service_install.sh;
               read -p "Appuyez sur Entrée pour continuer..."
               ;;
            # ========================================================================================================
            # Installation du service OpenWebui
            b|B)
               bash ${WORKDIR}/workspaces/openwebui/service_uninstall.sh;
               read -p "Appuyez sur Entrée pour continuer..."
               ;;
            # ========================================================================================================
            # Désinstallation du service Llama
            c|C)
               bash ${WORKDIR}/workspaces/llama/service_uninstall.sh;
               read -p "Appuyez sur Entrée pour continuer..."
               ;;
            # ========================================================================================================
            # Désinstallation du service OpenWebui
            d|D)
               bash ${WORKDIR}/workspaces/openwebui/service_uninstall.sh;
               read -p "Appuyez sur Entrée pour continuer..."
               ;;
            # ========================================================================================================
            # Lancer le téléchargement des modèles
            m|M)
               bash ${WORKDIR}/workspaces/llama/start.sh;
               read -p "Appuyez sur Entrée pour continuer..."
               ;;

            # ========================================================================================================
            # Nvidia - GPU Unlock
            x|X)
               bash ${WORKDIR}/workspaces/base/Nvidia_gpu_unlock.sh;
               read -p "Appuyez sur Entrée pour continuer..."
               ;;
            # ========================================================================================================
            # Redémarrer la machine
            r|R)
                reboot;
                ;;
            # ========================================================================================================
            # Quitter le menu
            q|Q)
                echo "Fermeture du menu. Au revoir !"
                break
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
