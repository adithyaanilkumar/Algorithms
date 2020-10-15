# !/bin/bash
# Author: Farzan Nobi Aka Zero_Prime9
# Nmap_Toolk1t Subtool FIES_Scan

Firewall_IES_Banner() #Banner for Firewall_IDS_Evasion and Spoofing
{
  version_check=$(cat Version.md)
  clear
  echo " "
  printf "\e[1;77m             _______ _________ _______  _______           _______  _        _            _________ _______  _______   \e[0m\n"
  printf "\e[1;77m            (  ____ \\__   __/(  ____ )(  ____ \|\     /|(  ___  )( \      ( \           \__   __/(  ____ \(  ____ \  \e[0m\n"
  printf "\e[1;77m            | (    \/   ) (   | (    )|| (    \/| )   ( || (   ) || (      | (              ) (   | (    \/| (        \e[0m\n"
  printf "\e[1;77m            | (__       | |   | (____)|| (__    | | _ | || (___) || |      | |              | |   | (__    | (        \e[0m\n"
  printf "\e[1;77m            |  __)      | |   |     __)|  __)   | |( )| ||  ___  || |      | |              | |   |  __)   (_____  )  \e[0m\n"
  printf "\e[1;77m            | (         | |   | (\ (   | (      | || || || (   ) || |      | |              | |   | (            ) |  \e[0m\n"
  printf "\e[1;77m            | )      ___) (___| ) \ \__| (____/\| () () || )   ( || (____/\| (____/\     ___) (___| (____/\/\____) |  \e[0m\n"
  printf "\e[1;77m            |/       \_______/|/   \__/(_______/(_______)|/     \|(_______/(_______/_____\_______/(_______/\_______)  \e[0m\n"
  printf "\e[1;77m                                                                                   (_____)                             \e[0m\n"
  printf "\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m          Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m            \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m           Follow me on Instagram and Twitter: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m        Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t        \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                  Visit: https://www.zeroprime9.com                   \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                           Version: $version_check \e[0m                             \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "       \e[1;93m______________________________________________________________________________________________________________ \e[0m\n\n"
  printf "       \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m     Sometimes Evading is a fun game but do it right, with a little bit help of spoofing ;)     \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "       \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m       Trouble here, Trouble There, A little bit of help to burn a hole through the wall        \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "       \e[1;93m______________________________________________________________________________________________________________\e[0m\n"
  echo " "

}


User_Input_Firewall_IES() #User Input for Firewall_IES
{
    Firewall_IES_Banner
    IP_FIES_Input=" "
    Conti_FIES="n"
    while [[ "$Conti_FIES" == "n" ]];
    do
      read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter Web Address/IP Address: \e[0m' IP_FIES_Input
      echo $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered Web Address/IP Address is: \e[0m' $IP_FIES_Input
      read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the Web Address/IP Address [y/n]: \e[0m' Conti_FIES

      if [ "$Conti_FIES" == "n" ]
      then
        echo " "
        echo $'                      \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        sleep 2
        echo " "
      elif [ "$Conti_FIES" == "y" ]
      then
        Firewalls_IES
      fi

  done

}


Firewalls_IES()
{
  clear
  Firewall_IES_Banner
  echo " "
  Firewall_IES_Choice=" "
  echo $'                      \e[96m\e[1;1m =============================================================='
  echo $'                      \e[31m        Target IP Address: \e[1;1m' $IP_FIES_Input
  echo $'                      \e[36m\e[1;1m =============================================================='
  echo " "
  echo $'                      \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Firewall Evasion using Fragment Packets\e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Firewall Evasion using MTU\e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Nmap Decoy Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Nmap Idle Zombie Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Nmap Manual Source Port Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Nmap Manual Random Data Scan\e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] Nmap Randomize Target Scan Order \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m] Nmap Bad Checksum Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-8 or 0]: \e[0m' Firewall_IES_Choice

  file_location_Firewall_IES="Scanned_Target/Firewall_IES"
  cd ..
  if [ -e $file_location_Firewall_IES ]
  then
      echo " "
  else
      cd Scanned_Target
      mkdir Firewall_IES
      cd ..
  fi
 file_loc_FIES_Fragment="Scanned_Target/Firewall_IES/FIES_Fragment.log"
 file_loc_FIES_MTU="Scanned_Target/Firewall_IES/FIES__MTU.log"
 file_loc_FIES_Decoy="Scanned_Target/Firewall_IES/FIES__Decoy.log"
 file_loc_FIES_Zombie="Scanned_Target/Firewall_IES/FIES__Zombie.log"
 file_loc_FIES_S_PORT="Scanned_Target/Firewall_IES/FIES__SPORT.log"   #Source Port Scan
 file_loc_FIES_R_Data="Scanned_Target/Firewall_IES/FIES__RDATA.log"   #Random Data Scan
 file_loc_FIES_R_Target="Scanned_Target/Firewall_IES/FIES__RTARGET.log" #Random_Target Scan
 file_loc_FIES_B_Checksum="Scanned_Target/Firewall_IES/FIES__BChecksum.log" #Badchecksum Scan

 case $Firewall_IES_Choice in

   "1")
   echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Firewall Evasion using Fragment Packets\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
   echo " "
   if [[ -e $file_loc_FIES_Fragment ]];
   then
       sleep 2
       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Sometimes 8 bytes of fragmented data is enough\e[0m"
       echo " "
       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
       echo " " >> $file_loc_FIES_Fragment
       echo "==============================" >> $file_loc_FIES_Fragment
       echo $(date) >> $file_loc_FIES_Fragment
       echo "==============================" >> $file_loc_FIES_Fragment
       echo " " >> $file_loc_FIES_Fragment
       nmap -f $IP_FIES_Input >> $file_loc_FIES_Fragment
       echo "==============================" >> $file_loc_FIES_Fragment
       sleep 3
       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
       echo " "
       cat $file_loc_FIES_Fragment
       echo " "
       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

     else
       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
       sleep 4
       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
         cd Scanned_Target/Firewall_IES/
         touch FIES_Fragment.log
         echo "==============================" >> FIES_Fragment.log
         echo $(date) >> FIES_Fragment.log
         echo "==============================" >> FIES_Fragment.log
         echo " " >> FIES_Fragment.log
         nmap -f $IP_FIES_Input >> FIES_Fragment.log
         echo "==============================" >> FIES_Fragment.log
         echo " "
         cat FIES_Fragment.log
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
         fi
     ;;

     "2")
     MTU=" "
     echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Firewall Evasion using MTU\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
     read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter MTU [Maximum Transmission Unit in the multiples of 8,16,32]: \e[0m' MTU
     echo " "
     if [[ -e $file_loc_FIES_MTU ]];
     then
         sleep 2
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Sometimes 8 bytes isn't enough so let's up the bytes\e[0m"
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
         echo " " >> $file_loc_FIES_MTU
         echo "==============================" >> $file_loc_FIES_MTU
         echo $(date) >> $file_loc_FIES_MTU
         echo "==============================" >> $file_loc_FIES_MTU
         echo " " >> $file_loc_FIES_MTU
         nmap --mtu $MTU $IP_FIES_Input >> $file_loc_FIES_MTU
         echo "==============================" >> $file_loc_FIES_MTU
         sleep 3
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
         echo " "
         cat $file_loc_FIES_MTU
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

       else
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
         sleep 4
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
           cd Scanned_Target/Firewall_IES/
           touch FIES__MTU.log
           echo "==============================" >> FIES__MTU.log
           echo $(date) >> FIES__MTU.log
           echo "==============================" >> FIES__MTU.log
           echo " " >> FIES__MTU.log
           nmap --mtu $MTU $IP_FIES_Input >> FIES__MTU.log
           echo "==============================" >> FIES__MTU.log
           echo " "
           cat FIES__MTU.log
           echo " "
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
           fi
       ;;

       "3")
       RND=" "
       echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap Decoy Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
       read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the number of Decoys required: \e[0m' RND
       echo " "
       if [[ -e $file_loc_FIES_Decoy ]];
       then
           sleep 2
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m A little bit of decoy can trick em.\e[0m"
           echo " "
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
           echo " " >> $file_loc_FIES_Decoy
           echo "==============================" >> $file_loc_FIES_Decoy
           echo $(date) >> $file_loc_FIES_Decoy
           echo "==============================" >> $file_loc_FIES_Decoy
           echo " " >> $file_loc_FIES_Decoy
           nmap -D RND:$RND $IP_FIES_Input >> $file_loc_FIES_Decoy
           echo "==============================" >> $file_loc_FIES_Decoy
           sleep 3
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
           echo " "
           cat $file_loc_FIES_Decoy
           echo " "
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

         else
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
           sleep 4
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Firewall_IES/
             touch FIES__Decoy.log
             echo "==============================" >> FIES__Decoy.log
             echo $(date) >> FIES__Decoy.log
             echo "==============================" >> FIES__Decoy.log
             echo " " >> FIES__Decoy.log
             nmap -D RND:$RND $IP_FIES_Input >> FIES__Decoy.log
             echo "==============================" >> FIES__Decoy.log
             echo " "
             cat FIES__Decoy.log
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
             fi
         ;;

         "4")
         Zmb_host=" " #For storing the zombie host
         echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap Idle Zombie Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the Zombie Host [EG:10.10.1.41]: \e[0m' Zmb_host
         echo " "
         if [[ -e $file_loc_FIES_Zombie ]];
         then
             sleep 2
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Zombies could be scary,but try using it during hacking and you would love it ;)\e[0m"
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             echo " " >> $file_loc_FIES_Zombie
             echo "==============================" >> $file_loc_FIES_Zombie
             echo $(date) >> $file_loc_FIES_Zombie
             echo "==============================" >> $file_loc_FIES_Zombie
             echo " " >> $file_loc_FIES_Zombie
             nmap -sI $Zmb_host $IP_FIES_Input >> $file_loc_FIES_Zombie
             echo "==============================" >> $file_loc_FIES_Zombie
             sleep 3
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
             echo " "
             cat $file_loc_FIES_Zombie
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
             sleep 4
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               cd Scanned_Target/Firewall_IES/
               touch FIES__Zombie.log
               echo "==============================" >> FIES__Zombie.log
               echo $(date) >> FIES__Zombie.log
               echo "==============================" >> FIES__Zombie.log
               echo " " >> FIES__Zombie.log
               nmap -sI $Zmb_host $IP_FIES_Input >> FIES__Zombie.log
               echo "==============================" >> FIES__Zombie.log
               echo " "
               cat FIES__Zombie.log
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
               fi
               ;;
          "5")
          Src_port=" "
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap Manual Source Port Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
          read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the Source Port: \e[0m' Src_port
          echo " "
          if [[ -e $file_loc_FIES_S_PORT ]];
            then
                sleep 2
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Intensive scans on a speecified port can definitely bypass some firewalls\e[0m"
                echo " "
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                echo " " >> $file_loc_FIES_S_PORT
                echo "==============================" >> $file_loc_FIES_S_PORT
                echo $(date) >> $file_loc_FIES_S_PORT
                echo "==============================" >> $file_loc_FIES_S_PORT
                echo " " >> $file_loc_FIES_S_PORT 
                nmap --source-port $Src_port $IP_FIES_Input >> $file_loc_FIES_S_PORT
                echo "==============================" >> $file_loc_FIES_S_PORT
                sleep 3
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
                echo " "
                cat $file_loc_FIES_S_PORT
                echo " "
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

            else
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
                sleep 4
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                cd Scanned_Target/Firewall_IES/
                touch FIES__SPORT.log
                echo "==============================" >> FIES__SPORT.log
                echo $(date) >> FIES__SPORT.log
                echo "==============================" >> FIES__SPORT.log
                echo " " >> FIES__SPORT.log
                nmap --source-port $Src_port $IP_FIES_Input >> FIES__SPORT.log
                echo "==============================" >> FIES__SPORT.log
                echo " "
                cat FIES__SPORT.log
                echo " "
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
          fi
          ;;
          "6")
          RND_DTA_Length=" "   # Random Data Length
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap Manual Random Data Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
          read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the data size per packet: \e[0m' RND_DTA_Length
          echo " "
          if [[ -e $file_loc_FIES_R_Data ]];
          then
              sleep 2
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Adding a little bit of Garbage value could be the difference of getting in or not\e[0m"
              echo " "
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
              echo " " >> $file_loc_FIES_R_Data
              echo "==============================" >> $file_loc_FIES_R_Data
              echo $(date) >> $file_loc_FIES_R_Data
              echo "==============================" >> $file_loc_FIES_R_Data
              echo " " >> $file_loc_FIES_R_Data
              nmap --data-length $RND_DTA_Length $IP_FIES_Input >> $file_loc_FIES_R_Data
              echo "==============================" >> $file_loc_FIES_R_Data
              sleep 3
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
              echo " "
              cat $file_loc_FIES_R_Data
              echo " "
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

            else
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
              sleep 4
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                cd Scanned_Target/Firewall_IES/
                touch FIES__RDATA.log
                echo "==============================" >> FIES__RDATA.log
                echo $(date) >> FIES__RDATA.log
                echo "==============================" >> FIES__RDATA.log
                echo " " >> FIES__RDATA.log
                nmap --data-length $RND_DTA_Length $IP_FIES_Input >> FIES__RDATA.log
                echo "==============================" >> FIES__RDATA.log
                echo " "
                cat FIES__RDATA.log
                echo " "
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                fi
            ;;
            "7")
            RND_TRG=" "   # Random Data Length
            echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap Randomize Target Scan Order\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
            read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the Target Address [EG:10.10.1.100-254]: \e[0m' RND_TRG
            echo " "
            if [[ -e $file_loc_FIES_R_Target ]];
            then
                sleep 2
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Randomer the scan the confused the firewall\e[0m"
                echo " "
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                echo " " >> $file_loc_FIES_R_Target
                echo "==============================" >> $file_loc_FIES_R_Target
                echo $(date) >> $file_loc_FIES_R_Target
                echo "==============================" >> $file_loc_FIES_R_Target
                echo " " >> $file_loc_FIES_R_Target
                nmap --randomize-hosts $RND_TRG >> $file_loc_FIES_R_Target
                echo "==============================" >> $file_loc_FIES_R_Target
                sleep 3
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
                echo " "
                cat $file_loc_FIES_R_Target
                echo " "
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

              else
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
                sleep 4
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                  cd Scanned_Target/Firewall_IES/
                  touch FIES__RTARGET.log
                  echo "==============================" >> FIES__RTARGET.log
                  echo $(date) >> FIES__RTARGET.log
                  echo "==============================" >> FIES__RTARGET.log
                  echo " " >> FIES__RTARGET.log
                  nmap --randomize-hosts $RND_TRG >> FIES__RTARGET.log
                  echo "==============================" >> FIES__RTARGET.log
                  echo " "
                  cat FIES__RDATA.log
                  echo " "
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                  fi
              ;;
              "8")
              RND_TRG=" "   # Random Data Length
              echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap Bad Checksum Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
              read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the Target Address [EG:10.10.1.100-254]: \e[0m' RND_TRG
              echo " "
              if [[ -e $file_loc_FIES_B_Checksum ]];
              then
                  sleep 2
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Poor systems always likes a little bit of the bad stuff don't they.\e[0m"
                  echo " "
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                  echo " " >> $file_loc_FIES_B_Checksum
                  echo "==============================" >> $file_loc_FIES_B_Checksum
                  echo $(date) >> $file_loc_FIES_B_Checksum
                  echo "==============================" >> $file_loc_FIES_B_Checksum
                  echo " " >> $file_loc_FIES_B_Checksum
                  nmap --badsum $IP_FIES_Input >> $file_loc_FIES_B_Checksum
                  echo "==============================" >> $file_loc_FIES_B_Checksum
                  sleep 3
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
                  echo " "
                  cat $file_loc_FIES_B_Checksum
                  echo " "
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                else
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
                  sleep 4
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    cd Scanned_Target/Firewall_IES/
                    touch FIES__BChecksum.log
                    echo "==============================" >> FIES__BChecksum.log
                    echo $(date) >> FIES__BChecksum.log
                    echo "==============================" >> FIES__BChecksum.log
                    echo " " >> FIES__BChecksum.log
                    nmap --badsum $IP_FIES_Input >> FIES__BChecksum.log
                    echo "==============================" >> FIES__BChecksum.log
                    echo " "
                    cat FIES__BChecksum.log
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                    fi
                ;;
                "0")
                      cd ..
                      bash Nmap_ToolK1t.sh

            ;;
 esac
}

EXIT_FUN() #Script underneath after finishing of tool
{
  echo " "
  echo " "
  echo -e "                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;35m           Sometimes it's wise to scan before you exploit.           \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] "
  echo -e "                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;35m           More the information, Easier the scan                     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] "
  echo " "
}

User_Input_Firewall_IES
EXIT_FUN