############################################################################################################
#                                 Arrête le script immédiatement en cas d'erreur                           #
############################################################################################################
set -e

############################################################################################################
#                                 TOUT CE QUI CONCERNE LE MENU UTILISATEUR                                 #
############################################################################################################
# Fonction d'affichage et de saisie
MENU_SELECTION() {
 clear
 echo "=================================================";
 echo "#             === MENU PRINCIPAL ===            #";
 echo "=================================================";
 echo "X) Test des variables"; 
 echo "";
 #echo "================================================="
 #echo "0) Installer les dépendances systèmes";
 #echo "================================================="
 #echo "1) Télécharger le dépôt LLAMA";
 #echo "2) Construire LLAMA";
 #echo "3) Télécharger les modèles";
 #echo "4) Lancer le serveur";
 #echo "5) Installer le service";
 #echo "6) Désinstaller le service";
 #echo "";
 echo "=================================================";
 echo "";
 echo "Q) Quitter le Menu";
 echo "";
 read -p "Sélectionner votre choix ? " REPONSE
 echo "";
}
MENU_CHOIX() {
 while true; do
  MENU_SELECTION
   case "$REPONSE" in

    # ===================================================================
    # 
    x|X)
     FUNC_DEMONSTRATATION;
     echo "";
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    0)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    1)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    2)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    3)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    4)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    5)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    6)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    7)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    8)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    9)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # 
    A|a)
     read -p "Appuyez sur Entrée pour continuer...";
     ;;
    # ===================================================================
    # Choix incorrect
    q)
     break;
     ;;
    # ===================================================================
    # Choix incorrect
    *)
     echo "Erreur : Choix invalide ($REPONSE). Veuillez réessayer."
     sleep 2
     ;;
    # ===================================================================
    esac
  done
}
############################################################################################################
#                                 DEMONSTRATION                                                            #
############################################################################################################
FUNC_DEMONSTRATATION(){
  echo "Appel de la fonction FUNC_DEMONSTRATATION";
  echo "La machine dispose de $CPUS core.";
}
############################################################################################################
#                                 TOUT CE QUI CONCERNE L'APPLICATION LLAMA.CPP                             #
############################################################################################################

############################################################################################################
#                                 TOUT CE QUI CONCERNE L'APPLICATION OPENWEBUI                             #
############################################################################################################
