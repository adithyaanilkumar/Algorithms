# !/bin/bash
# Author: Farzan Nobi Aka Zero_Prime9
# Nmap_Toolk1t Subtool Nmap_Nikto_Scan

Nmap_Nikto_Banner() #Banner for Nikto
{
  clear
  version_check=$(cat Version.md)
  echo " "
  printf "                \e[1;77m _        _______  _______  _______  _       _________ _      _________ _______       _______  _______  _______  _       \e[0m\n"
  printf "                \e[1;77m( (    /|(       )(  ___  )(  ____ )( (    /|\__   __/| \    /\\__   __/ (  ___  )     (  ____ \(  ____ \(  ___  )( (    /|\e[0m\n"
  printf "                \e[1;77m|  \  ( || () () || (   ) || (    )||  \  ( |   ) (   |  \  / /   ) (   | (   ) |     | (    \/| (    \/| (   ) ||  \  ( |\e[0m\n"
  printf "                \e[1;77m|   \ | || || || || (___) || (____)||   \ | |   | |   |  (_/ /    | |   | |   | |     | (_____ | |      | (___) ||   \ | |\e[0m\n"
  printf "                \e[1;77m| (\ \) || |(_)| ||  ___  ||  _____)| (\ \) |   | |   |   _ (     | |   | |   | |     (_____  )| |      |  ___  || (\ \) |\e[0m\n"
  printf "                \e[1;77m| | \   || |   | || (   ) || (      | | \   |   | |   |  ( \ \    | |   | |   | |           ) || |      | (   ) || | \   |\e[0m\n"
  printf "                \e[1;77m| )  \  || )   ( || )   ( || )      | )  \  |___) (___|  /  \ \   | |   | (___) |     /\____) || (____/\| )   ( || )  \  |\e[0m\n"
  printf "                \e[1;77m|/    )_)|/     \||/     \||/_____  |/    )_)\_______/|_/    \/   )_(   (_______)_____\_______)(_______/|/     \||/    )_)\e[0m\n"
  printf "                \e[1;77m                           (_____)                                             (_____)                                    \e[0m\n"
  printf "\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m          Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m            \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m           Follow me on Instagram and Twitter: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m        Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t        \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                  Visit: https://www.zeroprime9.com                   \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                           Version: $version_check \e[0m                             \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;93m____________________________________________________________________________________\e[0m\n\n"
  printf "                                \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m     WEB VULNERABILITY IS AMAZING, EVER HEARD OF WEB DEFACEMENT :)    \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;93m____________________________________________________________________________________\e[0m\n"
  echo " "

}

User_Input_Nikto() #User Input for Netbios and Nikto
{
    clear
    Nmap_Nikto_Banner
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
        Nmap_Nikto_Scan
    else
      echo " "
      echo $'                                \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
      sleep 2
      echo " "
    fi
      #To check if the choice is Netbios and Nikto and The choice is yes:

  done

}

Nmap_Nikto_Scan() #Nmap Scan using Nikto
{
 clear
 Nmap_Nikto_Banner
 Nmap_Nikto_choice=" "
 echo " "
 echo $'                                \e[96m\e[1;1m =============================================================='
 echo $'                                \e[31m        Target IP Address: \e[1;1m' $IP_NN_Input
 echo $'                                \e[36m\e[1;1m =============================================================='
 echo " "
 echo $'                                \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Nmap HTTP  Server scan with Nikto\e[0m'
 echo $'                                \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Nmap HTTPS Server scan with Nikto \e[0m'
 echo $'                                \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
 echo " "
 read -p $'                                \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1 or 2]: \e[0m' Nmap_Nikto_choice

 file_location_Nikto_Nmap="Scanned_Target/Nmap_Nikto"
 cd ..
 if [ -e $file_location_Nikto_Nmap ]
 then
     echo " "
 else
     cd Scanned_Target
     mkdir Nmap_Nikto
     cd ..
 fi
file_loc_Nikto_Http="Scanned_Target/Nmap_Nikto/NN_HTTP_Scan.log"
file_loc_Nikto_Https="Scanned_Target/Nmap_Nikto/NN_HTTPS_Scan.log"

 case $Nmap_Nikto_choice in

   "1" )
         echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap HTTP Server Scan with Nikto\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         if [[ -e $file_loc_Nikto_Http ]];
         then
             sleep 2
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Vulnerability where are you?\e[0m"
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             echo " " >> $file_loc_Nikto_Http
             echo "==============================" >> $file_loc_Nikto_Http
             echo $(date) >> $file_loc_Nikto_Http
             echo "==============================" >> $file_loc_Nikto_Http
             echo " " >> $file_loc_Nikto_Http
             nmap -p80 $IP_NN_Input -oG - | nikto -h ->> $file_loc_Nikto_Http
             echo "==============================" >> $file_loc_Nikto_Http
             sleep 3
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
             echo " "
             cat $file_loc_Nikto_Http
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Nikto Setup\e[0m"
             sleep 4
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               cd Scanned_Target/Nmap_Nikto
               touch NN_HTTP_Scan.log
               echo "==============================" >> NN_HTTP_Scan.log
               echo $(date) >> NN_HTTP_Scan.log
               echo "==============================" >> NN_HTTP_Scan.log
               echo " " >> NN_HTTP_Scan.log
               nmap -p80 $IP_NN_Input -oG - | nikto -h - >> NN_HTTP_Scan.log
               echo "==============================" >> NN_HTTP_Scan.log
               echo " "
               cat NN_HTTP_Scan.log
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
               fi
     ;;

     "2")
        echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap HTTPS Server Scan with Nikto \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
        if [[ -e $file_loc_Nikto_Https ]];
        then
         sleep 2
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m HTTPS, An S can't save your life ;)\e[0m"
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
         echo " " >> $file_loc_Nikto_Https
         echo "==============================" >> $file_loc_Nikto_Https
         echo $(date) >> $file_loc_Nikto_Https
         echo "==============================" >> $file_loc_Nikto_Https
         echo " " >> $file_loc_Nikto_Https
         nmap -p80,443 $IP_NN_Input -oG - | nikto -h ->> $file_loc_Nikto_Https
         echo "==============================" >> $file_loc_Nikto_Https
         sleep 3
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File\e[0m "
         echo " "
         cat $file_loc_Nikto_Https
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

       else
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time Nikto Setup \e[0m"
         sleep 4
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started\e[0m"
           cd Scanned_Target/Nmap_Nikto
           touch NN_HTTPS_Scan.log
           echo "==============================" >> NN_HTTPS_Scan.log
           echo $(date) >> NN_HTTPS_Scan.log
           echo "==============================" >> NN_HTTPS_Scan.log
           echo " " >> NN_HTTPS_Scan.log
           nmap -p80,443 $IP_NN_Input -oG - | nikto -h ->> NN_HTTPS_Scan.log
           echo "==============================" >> NN_HTTPS_Scan.log
           echo " "
           cat NN_HTTPS_Scan.log
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
      Nmap_Nikto_Scan

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

User_Input_Nikto
EXIT_FUN