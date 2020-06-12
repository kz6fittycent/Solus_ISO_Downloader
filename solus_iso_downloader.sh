#!/bin/sh

#############################################
# SOLUS ISO DOWNLOADER IS A WIP             #
# Created by: James Tigert - kz6fittycent   #
# Date: 12 JUN 2020                         #
#############################################

#############################################################################
# THIS IS A BASH SCRIPT VERSION MEANT TO REPLACE THE PYTHON VERSION THAT    #
# WAS BUGGY                                                                 #
#############################################################################

# ISO NAMES
#############################################################################
MAT=Solus-4.1-MATE.iso
BUD=Solus-4.1-Budgie.iso
PLA=Solus-4.1-Plasma.iso
GNM=Solus-4.1-GNOME.iso
#############################################################################

# MIRROR VARIABLES
#############################################################################

FALK_BUDG="http://solus.veatnet.de/iso/images/4.1/Solus-4.1-Budgie.iso"
HEL_BUDG="http://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-Budgie.iso"
ROC_BUDG="https://mirrors.rit.edu/solus/images/4.1/Solus-4.1-Budgie.iso"

FALK_GNM="http://solus.veatnet.de/iso/images/4.1/Solus-4.1-GNOME.iso"
HEL_GNM="http://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-GNOME.iso"
ROC_GNM="https://mirrors.rit.edu/solus/images/4.1/Solus-4.1-GNOME.iso"

FALK_MAT="http://solus.veatnet.de/iso/images/4.1/Solus-4.1-MATE.iso"
HEL_MAT="http://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-MATE.iso"
ROC_MAT="https://mirrors.rit.edu/solus/images/4.1/Solus-4.1-MATE.iso"

FALK_PLA="http://solus.veatnet.de/iso/images/4.1/Solus-4.1-Plasma.iso"
HEL_PLA="http://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-Plasma.iso"
ROC_PLA="https://mirrors.rit.edu/solus/images/4.1/Solus-4.1-Plasma.iso"

##############################################################################



while [ answer != "0" ]  
do 
clear 

echo "-------------------------------------"
echo ""
echo "       SOLUS ISO DOWNLOADER"
echo "               MENU              "
echo ""
echo "-------------------------------------"
echo ""
echo "Select from the following options: " 
echo ""
echo "1) Download Solus Budgie Edition"
echo "2) Download Solus GNOME Edition"
echo "3) Download Solus Plasma Edition"
echo "4) Download Solus MATE Edition"
echo "5) Quit"
echo "" 
read -p "Choice: " answer 
clear


    case $answer in
        1) echo "Choose your mirror"
           echo ""
           while [ mirror != "0" ]
           do
           echo ""
           echo "1) Falkenstein"
           echo "2) Helsinki"
           echo "3) Rochester"
           echo "4) Cancel"
           
           read -p "Mirror: " mirror 
           
           case $mirror in
                1) echo "Downloading ${BUD}..."
                   wget $FALK_BUDG                    
                   echo ""
                   echo "Creating checksum..."
                   sha256sum $BUD > $BUD.sha256sum 
                   echo ""
                   echo "Done"   
                   sleep 2
                   clear                
                   exit
                   ;;
                   
                2) echo "Downloading ${BUD}..."
                   wget $HEL_BUDG
                   echo ""
                   echo "Creating checksum..."                   
                   sha256sum $BUD > $BUD.sha256sum 
                   echo ""                   
                   echo "Done"
                   sleep 2
                   clear                                        
                   exit                   
                   ;;
                   
                3) echo "Downloading ${BUD}..."
                   wget $ROC_BUDG
                   echo ""
                   echo "Creating checksum..."                   
                   sha256sum $BUD > $BUD.sha256sum 
                   echo ""                   
                   echo "Done"    
                   sleep 2
                   clear                                    
                   exit                   
                   ;;
                   
                4) exit ;;
                   
           esac
           read key
           done
           ;;
        2) echo "Choose your mirror"
           echo ""
           while [ mirror != "0" ]
           do
           echo ""
           echo "1) Falkenstein"
           echo "2) Helsinki"
           echo "3) Rochester"
           echo "4) Exit"
           
           read -p "Mirror: " mirror            
           
           case $mirror in
                1) echo "Downloading ${GNM}..."
                   wget $FALK_GNM 
                   echo ""
                   echo "Creating checksum..." 
                   sha256sum $GNM > $GNM.sha256sum 
                   echo ""                   
                   echo "Done" 
                   sleep 2
                   clear                                       
                   exit
                   ;;
                   
                2) echo "Downloading ${GNM}..."
                   wget $HEL_GNM
                   echo ""
                   echo "Creating checksum..." 
                   sha256sum $GNM > $GNM.sha256sum 
                   echo ""                   
                   echo "Done"     
                   sleep 2
                   clear                                   
                   exit                  
                   ;;
                   
                3) echo "Downloading ${GNM}..."
                   wget $ROC_GNM
                   echo ""
                   echo "Creating checksum..." 
                   sha256sum $GNM > $GNM.sha256sum 
                   echo ""                   
                   echo "Done"   
                   sleep 2
                   clear                                     
                   exit                   
                   ;;
                   
                4) exit ;;
                   
           esac
           read key
           done
           ;;    
               
        3) echo "Choose your mirror"
           echo ""
           while [ mirror != "0" ]
           do
           echo ""
           echo "1) Falkenstein"
           echo "2) Helsinki"
           echo "3) Rochester"
           echo "4) Exit"

           read -p "Mirror: " mirror 
                      
           case $mirror in
                1) echo "Downloading ${PLA}..."
                   wget $FALK_PLA 
                   echo ""
                   echo "Creating checksum..." 
                   sha256sum $PLA > $PLA.sha256sum 
                   echo ""                   
                   echo "Done"   
                   sleep 2
                   clear                                     
                   exit                   
                   ;;
                   
                2) echo "Downloading ${PLA}..."
                   wget $HEL_PLA
                   echo ""
                   echo "Creating checksum..." 
                   sha256sum $PLA > $PLA.sha256sum 
                   echo ""                   
                   echo "Done"  
                   sleep 2
                   clear                                      
                   exit                   
                   ;;
                   
                3) echo "Downloading ${PLA}..."
                   wget $ROC_PLA
                   echo ""
                   echo "Creating checksum..." 
                   sha256sum $PLA > $PLA.sha256sum 
                   echo ""                   
                   echo "Done"  
                   sleep 2
                   clear                                      
                   exit                   
                   ;;
                   
                4) exit ;;
           esac
           read key
           done
           ;;  

        4) echo "Choose your mirror"
           echo ""
           while [ mirror != "0" ]
           do
           echo ""
           echo "1) Falkenstein"
           echo "2) Helsinki"
           echo "3) Rochester"
           echo "4) Exit"
           
           read -p "Mirror: " mirror            
           
           case $mirror in
                1) echo "Downloading ${MAT}..."
                   wget $FALK_MAT
                   echo ""
                   echo "Creating checksum..." 
                   sha256sum $MAT > $MAT.sha256sum 
                   echo ""                   
                   echo "Done" 
                   sleep 2
                   clear                                       
                   exit                   
                   ;;
                   
                2) echo "Downloading ${MAT}..."
                   wget $HEL_MAT
                   echo ""
                   echo "Creating checksum..." 
                   sha256sum $MAT > $MAT.sha256sum
                   echo ""                    
                   echo "Done"    
                   sleep 2
                   clear                                    
                   exit                     
                   ;;
                   
                3) echo "Downloading ${MAT}..."
                   wget $ROC_MAT
                   echo ""
                   echo "Creating checksum..." 
                   sha256sum $MAT > $MAT.sha256sum 
                   echo ""                   
                   echo "Done"
                   sleep 2
                   clear                                    
                   exit                    
                   ;;
                   
                4) exit ;;
           esac
           read key
           done
           ;;                  
                   
        5) break ;;     
              
   esac              
   echo "Press RETURN for MENU" 
   read key 
done 
exit 0