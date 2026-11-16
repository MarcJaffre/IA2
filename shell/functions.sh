############################################################################################################
#                                 Arrête le script immédiatement en cas d'erreur                           #
############################################################################################################
set -e

############################################################################################################
#                                 CHARGEMENT DES FICHIERS DE CONFIGURATION                                 #
############################################################################################################
# Le script lanceur charge tous les fichiers.

############################################################################################################
#                                 TOUT CE QUI CONCERNE LE MENU UTILISATEUR                                 #
############################################################################################################
# Fonction d'affichage et de saisie
MENU_SELECTION() {
 clear;
 echo "=================================================";
 echo "#             === MENU PRINCIPAL ===            #";
 echo "=================================================";
 echo "";
 echo "================================================="
 echo "0) Installer les dépendances systèmes";
 echo "================================================="
 echo "1) Télécharger le dépôt LLAMA";
 echo "2) Construire LLAMA";
 echo "3) Télécharger les modèles";
 echo "4) Lancer le serveur";
 echo "5) Installer le service";
 echo "6) Désinstaller le service";
 echo "";
 echo "=================================================";
 echo "X) Test des variables"; 
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
     clear;
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
#                                 TOUT CE QUI CONCERNE L'INSTALLATION DES DEPENDANCES                      #
############################################################################################################
DEBIAN_APT_BASE(){
# =====================================================================================================================
if [[ $VERSION_CODENAME == "trixie" || $VERSION_CODENAME == "bookworm"  ]]; then
cat > /etc/apt/sources.list << EOF
# =======================================================================================================
# https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_updates_and_backport                #
# =======================================================================================================
deb http://ftp.fr.debian.org/debian/            $VERSION_CODENAME          main non-free non-free-firmware contrib #
# =======================================================================================================
deb http://ftp.fr.debian.org/debian/            $VERSION_CODENAME-updates  main non-free non-free-firmware contrib #
# =======================================================================================================
deb http://security.debian.org/debian-security  $VERSION_CODENAME-security main non-free non-free-firmware contrib #
# =======================================================================================================
EOF
fi
# =====================================================================================================================
if [[ $VERSION_CODENAME == "bullseye" ]]; then
cat > /etc/apt/sources.list << EOF
# =======================================================================================================
deb http://ftp.fr.debian.org/debian/            $VERSION_CODENAME          main non-free contrib                 #
# =======================================================================================================
deb http://ftp.fr.debian.org/debian/            $VERSION_CODENAME-updates  main non-free contrib                 #
# =======================================================================================================
deb http://security.debian.org/debian-security  $VERSION_CODENAME-security main non-free contrib                 #
# =======================================================================================================
# https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_updates_and_backport                #
# =======================================================================================================
EOF
fi
DEBIAN_FRONTEND=noninteractive /usr/bin/apt update 1>/dev/null;
DEBIAN_FRONTEND=noninteractive /usr/bin/apt upgrade -y 1>/dev/null;
}


DEBIAN_APT_DEPENDANCES(){
# Tool
# ====================================================================================================================
echo "Installation de APT-FILE";
if [ ! -d /usr/share/apt-file                ]; then apt install -y apt-file                      1>/dev/null; fi

echo "Installation de BTOP";
if [ ! -d /usr/share/doc/btop                ]; then apt install -y btop                          1>/dev/null; fi

echo "Installation de CURL";
if [ ! -d /usr/share/doc/curl                ]; then apt install -y curl                          1>/dev/null; fi

echo "Installation de DOSFSTOOLS";
if [ ! -d /usr/share/doc/dosfstools          ]; then apt install -y dosfstools                    1>/dev/null; fi

echo "Installation de GNUPG2";
if [ ! -d /usr/share/doc/gnupg2              ]; then apt install -y gnupg2                        1>/dev/null; fi

echo "Installation de PCIUTILS";
if [ ! -d /usr/share/doc/pciutils            ]; then apt install -y pciutils                      1>/dev/null; fi

echo "Installation de TREEE";
if [ ! -d /usr/share/doc/tree                ]; then apt install -y tree                          1>/dev/null; fi

echo "Installation de WGET";
if [ ! -d /usr/share/doc/wget                ]; then apt install -y wget                          1>/dev/null; fi
}

############################################################################################################################
# Installation des paquets Dependances #
########################################
HOST_DEBIAN_APT_INSTALL_DEPENDANCE(){
# ====================================================================================================================
# LLAMA
echo "Installation de CMAKE";
if [ ! -f /usr/bin/cmake                     ]; then apt install -y cmake                        1>/dev/null; fi
echo "Installation de CCACHE";
if [ ! -d /usr/share/doc/ccache              ]; then apt install -y ccache                       1>/dev/null; fi
echo "Installation de LIBSSL-DEV";
if [ ! -d /usr/share/doc/libssl-dev          ]; then apt install -y libssl-dev                   1>/dev/null; fi
echo "Installation de OPENSSL";
if [ ! -d /usr/share/doc/openssl             ]; then apt install -y openssl                      1>/dev/null; fi
# ====================================================================================================================
echo "Installation de BUILD-ESSENTIAL";
if [ ! -d /usr/share/build-essential         ]; then apt install -y build-essential              1>/dev/null; fi
# --------
echo "Installation de LINUX-HEADERS";
if [ ! -d /usr/src/linux-headers-$(uname -r) ]; then apt install -y linux-headers-$(uname -r)    1>/dev/null; fi
echo "Installation de PYTHON3-FULL";
if [ ! -d /usr/share/doc/python3-full        ]; then apt install -y python3-full                 1>/dev/null; fi
echo "Installation de PYTHON3-PIP";
if [ ! -f /usr/bin/pip3                      ]; then apt install -y python3-pip                  1>/dev/null; fi
# ====================================================================================================================
# Bookworm
if [ "$VERSION_ID" = "12" ]; then
echo "Installation de PYTHON3-11";
  if [ ! -d /usr/share/doc/python3.11          ]; then apt install -y python3.11                   1>/dev/null; fi
echo "Installation de PYTHON3-11-ENV";
  if [ ! -d /usr/share/doc/python3.11-venv     ]; then apt install -y python3.11-venv              1>/dev/null; fi
fi
# ====================================================================================================================
# Trixie
if [ "$VERSION_ID" = "13" ]; then
echo "Installation de PYTHON3-13-ENV";
  if [ ! -d /usr/share/doc/python3.13          ]; then apt install -y python3.13                   1>/dev/null; fi
echo "Installation de PYTHON3-13-ENV";
  if [ ! -d /usr/share/doc/python3.13-venv     ]; then apt install -y python3.13-venv              1>/dev/null; fi
fi
# ====================================================================================================================
# Bypass Erreur
echo "" > /tmp/Test;
# ====================================================================================================================
}

NVIDIA_INSTALL(){
# ====================================================================================================================
if [ ! -d /usr/share/bug/nvidia-detect           ]; then apt install -y nvidia-detect            1>/dev/null; fi
if [ ! -d /usr/share/doc/nvidia-driver           ]; then apt install -y nvidia-driver            1>/dev/null; fi
if [ ! -d /usr/share/doc/nvidia-settings         ]; then apt install -y nvidia-setting           1>/dev/null; fi
# ====================================================================================================================
if [ ! -d /usr/share/doc/nvidia-settings         ]; then apt install -y nvidia-setting           1>/dev/null; fi
if [ ! -d /usr/lib/nvidia-cuda-toolkit           ]; then apt install -y nvidia-cuda-toolkit;     1>/dev/null; fi
if [ ! -d /usr/share/doc/nvidia-cuda-toolkit-gcc ]; then apt install -y nvidia-cuda-toolkit-gcc  1>/dev/null; fi
# ====================================================================================================================
cat > /etc/modprobe.d/blacklist-nouveau.conf << EOF
blacklist nouveau
options nouveau modeset=0
EOF
/usr/sbin/update-initramfs -u 1>/dev/null;
# ====================================================================================================================

}






############################################################################################################
#                                 TOUT CE QUI CONCERNE L'APPLICATION LLAMA.CPP                             #
############################################################################################################

############################################################################################################
#                                 TOUT CE QUI CONCERNE L'APPLICATION OPENWEBUI                             #
############################################################################################################
