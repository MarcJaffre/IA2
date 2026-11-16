############################################################################################################
#                                 TOUT CE QUI CONCERNE LE MENU UTILISATEUR                                 #
############################################################################################################
MENU_SELECTION() {
    clear
    echo "================================================="
    echo "          MENU PRINCIPAL                         "
    echo "================================================="
    echo "================================================="

    echo "================================================="
    echo "";
    echo "q) Quitter"
    echo "";
    read -p "Sélectionner votre choix ? " REPONSE
    echo "";
}



MENU_CHOIX() {
    while true; do
        # Appel de l'affichage du menu
        MENU_SELECTION;
        case "$REPONSE" in
            # ========================================================================================================
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            0)
               read -p "Appuyez sur Entrée pour continuer..."
               ;;

            # ========================================================================================================
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            1)
               read -p "Appuyez sur Entrée pour continuer..."
               ;;

            # ========================================================================================================
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            2)
               read -p "Appuyez sur Entrée pour continuer..."
               ;;

            # ========================================================================================================
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            3)
               read -p "Appuyez sur Entrée pour continuer..."
               ;;

            # ========================================================================================================
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            4)
               read -p "Appuyez sur Entrée pour continuer..."
               ;;

            # ========================================================================================================
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            5)
               read -p "Appuyez sur Entrée pour continuer..."
               ;;

            # ========================================================================================================
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            6)
               read -p "Appuyez sur Entrée pour continuer..."
               ;;

            # ========================================================================================================
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            7)
               read -p "Appuyez sur Entrée pour continuer..."
               ;;

            # ========================================================================================================
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            8)
               read -p "Appuyez sur Entrée pour continuer..."
               ;;

            # ========================================================================================================
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            9)
               read -p "Appuyez sur Entrée pour continuer..."
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
