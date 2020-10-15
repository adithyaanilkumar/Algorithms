# !/bin/bash
# Author: Farzan Nobi Aka Zero_Prime9
# Nmap_Toolk1t Subtool Nmap_Netbios_Scan

Nmap_Netbios_Banner() #NetBios_Nmap Banner
{
  version_check=$(cat Version.md)
  printf "        \e[1;77m _        _______  _______  _______  _        _______ _________ ______  _________ _______  _______       _______  _______  _______  _       \e[0m\n"
  printf "        \e[1;77m( (    /|(       )(  ___  )(  ____ )( (    /| (  ____ \\__   __/(  ___ \ \__   __/(  ___  )(  ____ \     (  ____ \(  ____ \(  ___  )( (    /|\e[0m\n"
  printf "        \e[1;77m|  \  ( || () () || (   ) || (    )||  \  ( || (    \/   ) (   | (   ) )   ) (   | (   ) || (    \/     | (    \/| (    \/| (   ) ||  \  ( |\e[0m\n"
  printf "        \e[1;77m|   \ | || || || || (___) || (____)||   \ | || (__       | |   | (__/ /    | |   | |   | || (_____      | (_____ | |      | (___) ||   \ | |\e[0m\n"
  printf "        \e[1;77m| (\ \) || |(_)| ||  ___  ||  _____)| (\ \) ||  __)      | |   |  __ (     | |   | |   | |(_____  )     (_____  )| |      |  ___  || (\ \) |\e[0m\n"
  printf "        \e[1;77m| | \   || |   | || (   ) || (      | | \   || (         | |   | (  \ \    | |   | |   | |      ) |           ) || |      | (   ) || | \   |\e[0m\n"
  printf "        \e[1;77m| )  \  || )   ( || )   ( || )      | )  \  || (____/\   | |   | )___) )___) (___| (___) |/\____) |     /\____) || (____/\| )   ( || )  \  |\e[0m\n"
  printf "        \e[1;77m|/    )_)|/     \||/     \||/_____  |/    )_)(_______/   )_(   |/ \___/ \_______/(_______)\_______)_____\_______)(_______/|/     \||/    )_)\e[0m\n"
  printf "        \e[1;77m                           (_____)                                                               (_____)                                    \e[0m\n"
  printf "\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m          Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m            \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m           Follow me on Instagram and Twitter: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m        Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t        \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                  Visit: https://www.zeroprime9.com                   \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                           Version: $version_check \e[0m                             \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;93m____________________________________________________________________________________\e[0m\n\n"
  printf "                                          \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m     MODERN OR OLD, NETBIOS SCAN TO THE RESCUE    \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;93m____________________________________________________________________________________\e[0m\n"

}

User_Input_Netbios() #User Input for Netbios and Nikto
{
    clear
    Nmap_Netbios_Banner
    IP_NN_Input=" "
    Conti_NN="n"
    echo " "
    while [[ "$Conti_NN" == "n" ]];
    do

      read -p $'                                \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter Web Address/IP Address: \e[0m' IP_NN_Input
      echo $'                                \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered Web Address/IP Address is: \e[0m' $IP_NN_Input
      read -p $'                                \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the Web Address/IP Address [y/n]: \e[0m' Conti_NN

      if [ "$Conti_NN" == "y" ]
      then
        Nmap_Netbios_Scan
    else
      echo " "
      echo $'                                \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
      sleep 2
      echo " "
    fi
      #To check if the choice is Netbios and Nikto and The choice is yes:

  done

}

Nmap_Netbios_Scan() #NEtbios Nmap Scan
{
  clear
  Nmap_Netbios_Banner
  echo " "
  Nmap_Netbios_choice=" "
  echo $'                                \e[96m\e[1;1m =============================================================='
  echo $'                                \e[31m        Target IP Address: \e[1;1m' $IP_NN_Input
  echo $'                                \e[36m\e[1;1m =============================================================='
  echo " "
  echo " "
  echo $'                                \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Nmap NetBios Server Scan\e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Nmap NetBios Enumeration Scan \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo  " "
  read -p $'                                \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1 or 2]: \e[0m' Nmap_Netbios_choice

  file_location_NetBios_Nmap="Scanned_Target/Nmap_NetBios"
  cd ..
  if [ -e $file_location_NetBios_Nmap ]
  then
      echo " "
  else
      cd Scanned_Target
      mkdir Nmap_NetBios
      cd ..
  fi
 file_loc_NetBios_Server_Scan="Scanned_Target/Nmap_NetBios/NNB_Server_Scan.log"
 file_loc_NetBios_Server_Enum="Scanned_Target/Nmap_NetBios/NNB_Server_Enumeratiom.log"


 case $Nmap_Netbios_choice in

   "1" )
         echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap NetBios Server Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         if [[ -e $file_loc_NetBios_Server_Scan ]];
         then
             sleep 2
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m I will FIND you, I will HUNT you and I will HACK you\e[0m"
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             echo " " >> $file_loc_NetBios_Server_Scan
             echo "==============================" >> $file_loc_NetBios_Server_Scan
             echo $(date) >> $file_loc_NetBios_Server_Scan
             echo "==============================" >> $file_loc_NetBios_Server_Scan
             echo " " >> $file_loc_NetBios_Server_Scan
             nmap -sV -v -p 139,445 $IP_NN_Input    >> $file_loc_NetBios_Server_Scan
             echo "==============================" >> $file_loc_NetBios_Server_Scan
             sleep 3
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
             echo " "
             cat $file_loc_NetBios_Server_Scan
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_NetBios/ for more Information\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First NetBios Scan Setup\e[0m"
             sleep 4
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               cd Scanned_Target/Nmap_NetBios
               touch NNB_Server_Scan.log
               echo "==============================" >> NNB_Server_Scan.log
               echo $(date) >> NNB_Server_Scan.log
               echo "==============================" >> NNB_Server_Scan.log
               echo " " >> NNB_Server_Scan.log
               nmap -sV -v -p 139,445 $IP_NN_Input   >> NNB_Server_Scan.log
               echo "==============================" >> NNB_Server_Scan.log
               echo " "
               cat NNB_Server_Scan.log
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_NetBios/ for more Information\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
               fi
     ;;

     "2")
        echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Nmap NetBios Enumeration Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
        if [[ -e $file_loc_NetBios_Server_Enum ]];
        then
         sleep 2
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Let me let you on a secret, Linux is better then Windows.\e[0m"
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
         echo " " >> $file_loc_NetBios_Server_Enum
         echo "==============================" >> $file_loc_NetBios_Server_Enum
         echo $(date) >> $file_loc_NetBios_Server_Enum
         echo "==============================" >> $file_loc_NetBios_Server_Enum
         echo " " >> $file_loc_NetBios_Server_Enum
         nmap -sU --script nbstat.nse -p 137 $IP_NN_Input >> $file_loc_NetBios_Server_Enum
         echo "==============================" >> $file_loc_NetBios_Server_Enum
         sleep 3
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File\e[0m "
         echo " "
         cat $file_loc_NetBios_Server_Enum
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_NetBios/ for more Information\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

       else
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time Nikto Setup \e[0m"
         sleep 4
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started\e[0m"
           cd Scanned_Target/Nmap_NetBios
           touch NNB_Server_Enumeratiom.log
           echo "==============================" >> NNB_Server_Enumeratiom.log
           echo $(date) >> NNB_Server_Enumeratiom.log
           echo "==============================" >> NNB_Server_Enumeratiom.log
           echo " " >> NNB_Server_Enumeratiom.log
           nmap -sU --script nbstat.nse -p 137 $IP_NN_Input >> NNB_Server_Enumeratiom.log
           echo "==============================" >> NNB_Server_Enumeratiom.log
           echo " "
           cat NNB_Server_Enumeratiom.log
           echo " "
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m  "
           fi

           ;;


  "0")
      cd ..
      ./Nmap_ToolK1t.sh

      ;;

   *)
     echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
     sleep 3
     Nmap_Netbios_Scan

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

User_Input_Netbios
EXIT_FUN