#!/bin/sh

#############################################
# SOLUS ISO DOWNLOADER IS A WIP             #
# Created by: James Tigert - kz6fittycent   #
# 12 JUN 2020                               #
#############################################

# ISO NAMES
#############################################################################
VER=$(curl https://mirrors.rit.edu/solus/images/4.1/Solus-4.1-Budgie.iso.sha256sum | awk '{print $2}' | cut -d "-" -f2)
MAT="Solus-${VER}-MATE.iso"
BUD="Solus-${VER}-Budgie.iso"
PLA="Solus-${VER}-Plasma.iso"
GNM="Solus-${VER}-GNOME.iso"
#############################################################################

# MIRROR VARIABLES
#############################################################################

FALK_BUDG=http://solus.veatnet.de/iso/images/${VER}/Solus-${VER}-Budgie.iso
HEL_BUDG=http://solus.fin.veatnet.de/iso/images/${VER}/Solus-${VER}-Budgie.iso
ROC_BUDG=https://mirrors.rit.edu/solus/images/${VER}/Solus-${VER}-Budgie.iso

FALK_GNM=http://solus.veatnet.de/iso/images/${VER}/Solus-${VER}-GNOME.iso
HEL_GNM=http://solus.fin.veatnet.de/iso/images/${VER}/Solus-${VER}-GNOME.iso
ROC_GNM=https://mirrors.rit.edu/solus/images/${VER}/Solus-${VER}-GNOME.iso

FALK_MAT=http://solus.veatnet.de/iso/images/${VER}/Solus-${VER}-MATE.iso
HEL_MAT=http://solus.fin.veatnet.de/iso/images/${VER}/Solus-${VER}-MATE.iso
ROC_MAT=https://mirrors.rit.edu/solus/images/${VER}/Solus-${VER}-MATE.iso

FALK_PLA=http://solus.veatnet.de/iso/images/${VER}/Solus-${VER}-Plasma.iso
HEL_PLA=http://solus.fin.veatnet.de/iso/images/${VER}/Solus-${VER}-Plasma.iso
ROC_PLA=https://mirrors.rit.edu/solus/images/${VER}/Solus-${VER}-Plasma.iso

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
echo "Choose from the following options: " 
echo ""
echo "1) Download Solus Budgie Edition"
echo "2) Download Solus GNOME Edition"
echo "3) Download Solus Plasma Edition"
echo "4) Download Solus MATE Edition"
echo "5) Quit"
echo "" 
read -p "Choice: " answer 
echo ""
echo ""
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
           echo ""
           
           read -p "Mirror: " mirror
           echo ""
           echo ""
           
           case $mirror in
                1) echo "Downloading ${BUD}..."
                   wget --no-config $FALK_BUDG                    
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
                   wget --no-config $HEL_BUDG
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
                   wget --no-config $ROC_BUDG
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
                   wget --no-config $FALK_GNM 
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
                   wget --no-config $HEL_GNM
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
                   wget --no-config $ROC_GNM
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
                   wget --no-config $FALK_PLA 
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
                   wget --no-config $HEL_PLA
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
                   wget --no-config $ROC_PLA
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
                   wget --no-config $FALK_MAT
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
                   wget --no-config $HEL_MAT
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
                   wget --no-config $ROC_MAT
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
