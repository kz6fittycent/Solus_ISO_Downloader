#!/usr/bin/env python3

# AUTHOR: kz6fittycent
# DATE: 17 APR 2020
# THIS IS A WIP
# MIT LICENSE

# IMPORTS
###########################
import time
from time import sleep
import sys
import string
import os
from tqdm import tqdm
from urllib.request import urlretrieve
import textwrap
from pathlib import Path
###########################

# MIRROR VARIABLES
#############################################################################

FALK_BUDG = "http://solus.veatnet.de/iso/images/4.1/Solus-4.1-Budgie.iso"
HEL_BUDG = "http://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-Budgie.iso"
ROC_BUDG = "https://mirrors.rit.edu/solus/images/4.1/Solus-4.1-Budgie.iso"

FALK_GNM = "http://solus.veatnet.de/iso/images/4.1/Solus-4.1-GNOME.iso"
HEL_GNM = "http://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-GNOME.iso"
ROC_GNM = "https://mirrors.rit.edu/solus/images/4.1/Solus-4.1-GNOME.iso"

FALK_MAT = "http://solus.veatnet.de/iso/images/4.1/Solus-4.1-MATE.iso"
HEL_MAT = "http://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-MATE.iso"
ROC_MAT = "https://mirrors.rit.edu/solus/images/4.1/Solus-4.1-MATE.iso"

FALK_PLA = "http://solus.veatnet.de/iso/images/4.1/Solus-4.1-Plasma.iso"
HEL_PLA = "http://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-Plasma.iso"
ROC_PLA = "https://mirrors.rit.edu/solus/images/4.1/Solus-4.1-Plasma.iso"

##############################################################################

# VARIABLES
###############################################

HOME = str(Path.home())
PAUSE = time.sleep(.5) 
#SUM_PLA = str(56138dadf2637d1b06c39d2cb19bfecbae1099117cdff57ed1c27ff8c654413a)
#SUM_MAT = str(f70e8b233a518ad79cbe6d2f9f2313a692a1e3efd290c13ee844ad7c154383ef)
#SUM_GNM = str(308caa5b3ab42f21f79b3ba9ff78bd6cf348e0d6867d77b55d979ac4d28ceeef)
#SUM_BUD = str(4bf00f2f50e7024a71058c50c24a5706f9c18f618c013b8a819db33482577d17)
MAT = 'Solus-4.1-MATE.iso'
BUD = 'Solus-4.1-Budgie.iso'
PLA = 'Solus-4.1-Plasma.iso'
GNM = 'Solus-4.1-GNOME.iso'
###############################################

# CREDIT: NEOFETCH FOR ASCII SOLUS LOGO

os.system('clear')

print()
print(r"""

            -```````````
          `-+/------------.` 
       .---:mNo---------------.
     .-----yMMMy:---------------. 
   `------oMMMMMm/----------------` 
  .------/MMMMMMMN+----------------. 
 .------/NMMMMMMMMm-+/--------------.
`------/NMMMMMMMMMN-:mh/-------------` 
.-----/NMMMMMMMMMMM:-+MMd//oso/:-----. 
-----/NMMMMMMMMMMMM+--mMMMh::smMmyo:-- 
----+NMMMMMMMMMMMMMo--yMMMMNo-:yMMMMd/.
.--oMMMMMMMMMMMMMMMy--yMMMMMMh:-yMMMy-` 
`-sMMMMMMMMMMMMMMMMh--dMMMMMMMd:/Ny+y. 
`-/+osyhhdmmNNMMMMMm-/MMMMMMMmh+/ohm+ 
  .------------:://+-/++++++oshddys:
   -hhhhyyyyyyyyyyyhhhhddddhysssso-
    `:ossssssyysssssssssssssssso:` 
      `:+ssssssssssssssssssss+-
         `-/+ssssssssssso+/-`                                     
              `.-----..`
              
""")
              
print ()
print ("         Solus ISO Downloader")
print ()
PAUSE

def main():

        print()
        def print_menu():
            print (10 * "-" , "DOWNLOADS MENU" , 10 * "-")
            print ()
            print ("1. Download Solus Budgie Edition")
            print ("2. Download Solus GNOME Edition")
            print ("3. Download Solus Plasma Edition")
            print ("4. Download Solus MATE Edition")
            print ("5. Exit")
            print ()
            print (37 * "-")
            print()
            
        loop=True  

        while loop:
            print_menu()
            choice = str(input("Edition: "))
            
            choice = int(choice)
            
            if choice == 1: #BUDGIE
               print()
               def mirror_menu():
                   print ("Choose your mirror: ")
                   print()
                   print ("1. Falkenstein - DE")
                   print ("2. Helsinki - FI")
                   print ("3. Rochester - US")
                   print ("4. Cancel")
                   print()
               loop=True
               while loop:
                   mirror_menu()
                   mirror = str(input("Mirror: "))
                   
                   mirror = int(mirror)
                   
                   if mirror == 1: # FALKENSTEIN
                      print()
                      PAUSE
                      print()
                      print("Downloading Solus Budgie Edition...")
                      def download():
                          urlretrieve(FALK_BUDG, BUD)
                      with tqdm(total=100, file=sys.stdout) as pbar:
                           for i in range(100):
                               download()        
                               pbar.update(1)
                      loop=False
                      
                   elif mirror == 2: # HELSINKI
                        print()
                        PAUSE
                        print()
                        print("Downloading Solus Budgie Edition...")
                        def download():
                            urlretrieve(HEL_BUDG, BUD)
                        with tqdm(total=100, file=sys.stdout) as pbar:
                             for i in range(100):
                                 download()        
                                 pbar.update(1)
                        loop=False
                      
                   elif mirror == 3: # ROCHESTER
                        print()
                        PAUSE
                        print()
                        print("Downloading Solus Budgie Edition...")
                        def download():
                            urlretrieve(ROC_BUDG, BUD)
                        with tqdm(total=100, file=sys.stdout) as pbar:
                             for i in range(100):
                                 download()        
                                 pbar.update(1)
                        loop=False  
                       
                   elif choice == 4:
                        print ("Cancelling download...")
                        PAUSE
                        loop=False
                    
                   else:
                        print()
                        print ("Please choose between 1-4")
                        print()
                                  
                
            elif choice == 2: #GNOME
               print()
               def mirror_menu():
                   print ("Choose your mirror: ")
                   print()
                   print ("1. Falkenstein - DE")
                   print ("2. Helsinki - FI")
                   print ("3. Rochester - US")
                   print ("4. Cancel")
                   print()
               loop=True
               while loop:
                   mirror_menu()
                   mirror = str(input("Mirror: "))
                   
                   mirror = int(mirror)
                   
                   if mirror == 1: # FALKENSTEIN
                      print()
                      PAUSE
                      print()
                      print("Downloading Solus GNOME Edition...")
                      def download():
                          urlretrieve(FALK_GNM, GNM)
                      with tqdm(total=100, file=sys.stdout) as pbar:
                           for i in range(100):
                               download()        
                               pbar.update(1)
                      loop=False
                      
                   elif mirror == 2: # HELSINKI
                        print()
                        PAUSE
                        print()
                        print("Downloading Solus GNOME Edition...")
                        def download():
                            urlretrieve(HEL_GNM, GNM)
                        with tqdm(total=100, file=sys.stdout) as pbar:
                             for i in range(100):
                                 download()        
                                 pbar.update(1)
                        loop=False
                      
                   elif mirror == 3: # ROCHESTER
                        print()
                        PAUSE
                        print()
                        print("Downloading Solus GNOME Edition...")
                        def download():
                            urlretrieve(ROC_GNM, GNM)
                        with tqdm(total=100, file=sys.stdout) as pbar:
                             for i in range(100):
                                 download()        
                                 pbar.update(1)
                        loop=False  
                       
                   elif choice == 4:
                        print ("Cancelling download...")
                        PAUSE
                        loop=False
                    
                   else:
                        print()
                        print ("Please choose between 1-4")
                        print()            
                 
            elif choice == 3: #PLASMA
               print()
               def mirror_menu():
                   print ("Choose your mirror: ")
                   print()
                   print ("1. Falkenstein - DE")
                   print ("2. Helsinki - FI")
                   print ("3. Rochester - US")
                   print ("4. Cancel")
                   print()
               loop=True
               while loop:
                   mirror_menu()
                   mirror = str(input("Mirror: "))
                   
                   mirror = int(mirror)
                   
                   if mirror == 1: # FALKENSTEIN
                      print()
                      PAUSE
                      print()
                      print("Downloading Solus Plasma Edition...")
                      def download():
                          urlretrieve(FALK_PLA, PLA)
                      with tqdm(total=100, file=sys.stdout) as pbar:
                           for i in range(100):
                               download()        
                               pbar.update(1)
                      loop=False
                      
                   elif mirror == 2: # HELSINKI
                        print()
                        PAUSE
                        print()
                        print("Downloading Solus Plasma Edition...")
                        def download():
                            urlretrieve(HEL_PLA, PLA)
                        with tqdm(total=100, file=sys.stdout) as pbar:
                             for i in range(100):
                                 download()        
                                 pbar.update(1)
                        loop=False
                      
                   elif mirror == 3: # ROCHESTER
                        print()
                        PAUSE
                        print()
                        print("Downloading Solus Budgie Edition...")
                        def download():
                            urlretrieve(ROC_PLA, PLA)
                        with tqdm(total=100, file=sys.stdout) as pbar:
                             for i in range(100):
                                 download()        
                                 pbar.update(1)
                        loop=False  
                       
                   elif choice == 4:
                        print ("Cancelling download...")
                        PAUSE
                        loop=False
                    
                   else:
                        print()
                        print ("Please choose between 1-4")
                        print()
                     
            elif choice == 4: # MATE
               print()
               def mirror_menu():
                   print ("Choose your mirror: ")
                   print()
                   print ("1. Falkenstein - DE")
                   print ("2. Helsinki - FI")
                   print ("3. Rochester - US")
                   print ("4. Cancel")
                   print()
               loop=True
               while loop:
                   mirror_menu()
                   mirror = str(input("Mirror: "))
                   
                   mirror = int(mirror)
                   
                   if mirror == 1: # FALKENSTEIN
                      print()
                      PAUSE
                      print()
                      print("Downloading Solus MATE Edition...")
                      def download():
                          urlretrieve(FALK_MAT, MAT)
                      with tqdm(total=100, file=sys.stdout) as pbar:
                           for i in range(100):
                               download()        
                               pbar.update(1)
                      loop=False
                      
                   elif mirror == 2: # HELSINKI
                        print()
                        PAUSE
                        print()
                        print("Downloading Solus MATE Edition...")
                        def download():
                            urlretrieve(HEL_MAT, MAT)
                        with tqdm(total=100, file=sys.stdout) as pbar:
                             for i in range(100):
                                 download()        
                                 pbar.update(1)
                        loop=False
                      
                   elif mirror == 3: # ROCHESTER
                        print()
                        PAUSE
                        print()
                        print("Downloading Solus MATE Edition...")
                        def download():
                            urlretrieve(ROC_MAT, MAT)
                        with tqdm(total=100, file=sys.stdout) as pbar:
                             for i in range(100):
                                 download()        
                                 pbar.update(1)
                        loop=False  
                       
                   elif choice == 4:
                        print ("Cancelling download...")
                        PAUSE
                        loop=False
                    
                   else:
                        print()
                        print ("Please choose between 1-4")
                        print()
                 
            elif choice == 5:
                 print()
                 print ("Exiting now...")
                 print()
                 PAUSE
                 loop=False
            else:
                 print()
                 print("Please choose between 1-5")
                 print()
main()

time.sleep(3)

os.system('clear')

