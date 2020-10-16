# !/bin/bash
# Author: Farzan Nobi Aka Zero_Prime9
# Nmap_Toolk1t Subtool Basic_Scan


Basic_Scan_Banner() # Banner for the Basic Scan
{
  version_check=$(cat Version.md)
  clear
  echo " "
  printf "\e[1;77m        ______   _______  _______ _________ _______       _______  _______  _______  _         \e[0m\n"
  printf "\e[1;77m       (  ___ \ (  ___  )(  ____ \\__   __/(  ____ \      (  ____ \(  ____ \(  ___  )( (    /|  \e[0m\n"
  printf "\e[1;77m       | (   ) )| (   ) || (    \/   ) (   | (    \/     | (    \/| (    \/| (   ) ||  \  ( |  \e[0m\n"
  printf "\e[1;77m       | (__/ / | (___) || (_____    | |   | |           | (_____ | |      | (___) ||   \ | |  \e[0m\n"
  printf "\e[1;77m       |  __ (  |  ___  |(_____  )   | |   | |           (_____  )| |      |  ___  || (\ \) |  \e[0m\n"
  printf "\e[1;77m       | (  \ \ | (   ) |      ) |   | |   | |                 ) || |      | (   ) || | \   |  \e[0m\n"
  printf "\e[1;77m       | )___) )| )   ( |/\____) |___) (___| (____/\     /\____) || (____/\| )   ( || )  \  |  \e[0m\n"
  printf "\e[1;77m       |/ \___/ |/     \|\_______)\_______/(_______/_____\_______)(_______/|/     \||/    )_)  \e[0m\n"
  printf "\n"
  printf "        \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m          Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m            \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "        \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m           Follow me on Instagram and Twitter: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "        \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m        Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t        \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "        \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                  Visit: https://www.zeroprime9.com                   \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "        \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                           Version: $version_check \e[0m                             \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "        \e[1;93m____________________________________________________________________________________\e[0m\n\n"
  printf "        \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m     SOMETIMES BEING BASIC IS ALL YOU NEED, NEVER UNDERESTIMATE IT    \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "        \e[1;93m____________________________________________________________________________________\e[0m\n"
  
  printf "\n"
}



User_IP_FILE_Basic_Input()
{
  Basic_Scan_Banner
  IP_FILE_Choice=" " # Choice for IP or FILE
  IP_FILE_Input=" "  # For Receving the input for IP
  Conti_FILE_IP="n"  # For continuing the IP or FILE
  echo ""
  echo $'        \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 1.Scan a particular IP Address/Website \e[0m'
  echo $'        \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 2.Scan from a File\e[0m'
  echo $'        \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo ""
  read -p $'        \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' IP_FILE_Choice
  echo " "

  if [ "$IP_FILE_Choice" == "1" ] #This is if the choice is IP/Website
  then
    echo $'        \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m] You have selected:\e[1;91m IP Address/Website                     \e[0m'
    while [[ $Conti_FILE_IP == "n" ]];
    do
      read -p $'        \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter IP Address: \e[0m' IP_FILE_Input
      echo $'        \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered IP Address is: \e[0m' $IP_FILE_Input
      read -p $'        \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the IP[y/n]: \e[0m' Conti_FILE_IP

      if [ "$Conti_FILE_IP" == "n" ]
      then
        echo " "
        echo $'        \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        sleep 2
        echo " "
      elif [ "$Conti_FILE_IP" == "y" ] #To check if the choice is Basic scan and The choice is yes:
      then
        Basic_Scan_Choice_IP
      fi

  done

elif [ "$IP_FILE_Choice" == "2" ] #This is if the choice is a file
  then
      echo $'        \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m] You have selected:\e[1;91m From a file                      \e[0m'

      while [[ $Conti_FILE_IP == "n" ]];
    	do
        read -p $'        \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter File Location: \e[0m' IP_FILE_Input
    		echo $'        \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered File Location is: \e[0m' $IP_FILE_Input
    		read -p $'        \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the File location [y/n]: \e[0m' Conti_FILE_IP
        if [ "$Conti_FILE_IP" == "n" ]
        then
          echo " "
          echo $'        \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
          sleep 2
          echo " "
          IP_
        elif [ "$Conti_FILE_IP" == "y" ] #To check if the choice is Basic scan and The choice is yes for File
        then
          Basic_Scan_Choice_File
        else
          echo " "
          echo $'        \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
          sleep 2
          echo " "
        fi

    done

elif [ "$IP_FILE_Choice" == "0" ]
  then
      cd ..
      ./Nmap_ToolK1t.sh


  else # For showing invalid choice
      echo $'        \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
      sleep 1
  fi

}



Basic_Scan_Choice_IP() #The type of scans for BASIC_SCAN_CHOICE
{
  clear
  Basic_Scan_Banner
  echo " "
  bs_scan_sc=" "
  echo $'        \e[96m\e[1;1m =============================================================='
  echo $'        \e[31m        Target IP Address: \e[1;1m' $IP_FILE_Input
  echo $'        \e[36m\e[1;1m =============================================================='
  echo " "
  echo $'          \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Ping Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Service Version Detection Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Common Port Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Fast Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Basic Stealth Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Protocol Support Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] TCP Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m] UDP Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m9\e[0m\e[1;92m] Ping Scan with port scan disabled \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo " "
  read -p $'          \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-9]: \e[0m' bs_scan_sc
  echo " "
  clear
  Basic_Scan_Banner
  echo ""
  cd ..
  file_location_BS="Scanned_Target/Basic_Scan"
  if [ -e $file_location_BS ]
  then
      echo " "
  else
      cd Scanned_Target
      mkdir Basic_Scan
      cd ..
  fi
  
  file_loc_ping="Scanned_Target/Basic_Scan/Ping_Scan.log"
  file_loc_sV="Scanned_Target/Basic_Scan/Service_Detection_Scan.log"
  file_loc_port="Scanned_Target/Basic_Scan/Common_Port_Scan.log"
  file_loc_fast="Scanned_Target/Basic_Scan/Fast_Scan.log"
  file_loc_sS="Scanned_Target/Basic_Scan/Basic_Stealth_Scan.log"
  file_loc_protocol="Scanned_Target/Basic_Scan/Protocol_Support_Scan.log"
  file_loc_tcp="Scanned_Target/Basic_Scan/TCP_Scan.log"
  file_loc_udp="Scanned_Target/Basic_Scan/UDP_Scan.log"
  file_loc_pingport="Scanned_Target/Basic_Scan/Ping_Scan_Port_Disabled_Scan.log"

  case $bs_scan_sc in

    "1" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Ping Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m' #Ping_Scan setup
           if [[ -e $file_loc_ping  ]];
           then
             sleep 2
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Hacking is a form of art, A puzzle to be solved\e[0m"
             sleep 4
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo $(date) >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " " >> $file_loc_ping
             nmap -sP $IP_FILE_Input >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " "
             sleep 4
             echo " "
             cat $file_loc_ping
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Basic_Scan
             touch Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo $(date) >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " " >> Ping_Scan.log
             nmap -sP $IP_FILE_Input >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " "
             cat Ping_Scan.log
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/for more Information\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi
      ;; # End of Ping_Scan setup

          # Setup for Service_Detection_Scan
      "2" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Service Version Detection Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
             if [[ -e $file_loc_sV ]];
             then
               sleep 2
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Give me your version number!!\e[0m"
               sleep 4
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               echo " " >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo $(date) >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo " " >> $file_loc_sV
               nmap -sV $IP_FILE_Input >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               sleep 3
               echo " "
               cat $file_loc_sV
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

             else
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
               sleep 4
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               cd Scanned_Target/Basic_Scan
               touch Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo $(date) >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo " " >> Service_Detection_Scan.log
               nmap -sV $IP_FILE_Input >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo " "
               cat Service_Detection_Scan.log
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
             fi

             ;; #End of Service_Detection_Scan setup

             # Setup for Common_Port_Scan
          "3" ) echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Common Port Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                echo " "
                if [[ -e $file_loc_port ]];
                then
                    sleep 2
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m An Open Door is always great!. Hi Open Port!\e[0m"
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    echo " " >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo $(date) >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo " " >> $file_loc_port
                    nmap $IP_FILE_Input >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    sleep 3
                    echo " "
                    cat $file_loc_port
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                else
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                    sleep 4
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    cd Scanned_Target/Basic_Scan
                    touch Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo $(date) >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo " " >> Common_Port_Scan.log
                    nmap $IP_FILE_Input >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo " "
                    cat Common_Port_Scan.log
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                  fi

              ;; #End of Common_Port_Scan Setup

                     # Setup for Fast_Scan
              "4" ) echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Fast Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_fast ]];
                    then
                         sleep 2
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m The faster you are, more sadder the co-operate companies get!\e[0m"
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... \e[0m"
                         echo " " >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo $(date) >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo " " >> $file_loc_fast
                         nmap -F $IP_FILE_Input >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         sleep 3
                         echo " "
                         cat $file_loc_fast
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                     else
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                       sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                         cd Scanned_Target/Basic_Scan
                         touch Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo $(date) >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " " >> Fast_Scan.log
                         nmap -F $IP_FILE_Input >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " "
                         cat Fast_Scan.log
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. \e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                       fi

               ;; #End of setup for Fast_Scan

              "5" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Basic Stealth Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_sS ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m The Quiter You Are, The More You Hear!\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo $(date) >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo " " >> $file_loc_sS
                        nmap -sS $IP_FILE_Input >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        sleep 3
                        echo " "
                        cat $file_loc_sS
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                        sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo $(date) >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " " >> Basic_Stealth_Scan.log
                        nmap -sS $IP_FILE_Input >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " "
                        cat Basic_Stealth_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Basic_Stealth_Scan

              # Setup for Protocol Support Scan
              "6" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Protocol Support Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_protocol ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m A little bit of SMTP, A little bit of SSH, A little bit of FTP\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... \e[0m"
                        echo " " >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo $(date) >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo " " >> $file_loc_protocol
                        nmap -sO $IP_FILE_Input >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        sleep 3
                        echo " "
                        cat $file_loc_protocol
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo $(date) >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " " >> Protocol_Support_Scan.log
                        nmap -sO $IP_FILE_Input >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " "
                        cat Protocol_Support_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Protocol_Support_Scan

              #Setup for TCP_Scan
              "7" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m TCP Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_tcp ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Data, a lot of data. Money a lot of Money HEHE!.\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo $(date) >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo " " >> $file_loc_tcp
                        nmap -sT $IP_FILE_Input >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        sleep 3
                        echo " "
                        cat $file_loc_tcp
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information \e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"

                    else
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                        sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo $(date) >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo " " >> TCP_Scan.log
                        nmap -sT $IP_FILE_Input >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        cat TCP_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for TCP_Scan

              #Setup for UDP_Scan
              "8" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m UDP Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_udp ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Stream all you want, but i am not paying ;)\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo " " >> $file_loc_udp
                        nmap -sU $IP_FILE_Input >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        sleep 3
                        echo " "
                        cat $file_loc_udp
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                        sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo $(date) >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo " " >> UDP_Scan.log
                        nmap -sU $IP_FILE_Input >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat UDP_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for UDP_Scan

                #Setup for Ping Scan without Port Scanner
              "9" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Ping Scan with Port Scan Disabled \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_pingport ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m FBI Open UP! \e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_pingport
                        echo " " >> $ffile_loc_pingport
                        nmap -sn $IP_FILE_Input >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        sleep 3
                        echo " "
                        cat $file_loc_pingport
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. \e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"

                    else
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup"
                        sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started.."
                        cd Scanned_Target/Basic_Scan
                        touch Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo $(date) >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " " >> Ping_Scan_Port_Disabled_Scan.log
                        nmap -sn $IP_FILE_Input >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        cat Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Ping_Scan_Port_Disabled_Scan

              "0" ) # For moving back
                    User_IP_FILE_Basic_Input

              ;;

              *)
                 echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
                 sleep 3
                 Basic_Scan_Choice_IP

              ;;

  esac


}

Basic_Scan_Choice_File() #The type of scans for BASIC_SCAN_CHOICE
{
  clear
  Basic_Scan_Banner
  bs_scan_sc=" "
  echo $'        \e[36m =============================================================='
  echo $'        \e[31m        File Location: \e[1;1m' $IP_FILE_Input
  echo $'        \e[36m =============================================================='
  echo " "
  echo $'          \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Ping Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Service Version Detection Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Common Port Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Fast Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Basic Stealth Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Protocol Support Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] TCP Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m] UDP Scan \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m9\e[0m\e[1;92m] Ping Scan with port scan disabled \e[0m'
  echo $'          \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo " "
  read -p $'          \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-9]: \e[0m' bs_scan_sc
  echo " "
  
  cd ..
  file_location_BS="Scanned_Target/Basic_Scan"
  if [ -e $file_location_BS ]
  then
      echo " "
  else
      cd Scanned_Target
      mkdir Basic_Scan
      cd ..
  fi

  file_loc_ping="Scanned_Target/Basic_Scan/Ping_Scan.log"
  file_loc_sV="Scanned_Target/Basic_Scan/Service_Detection_Scan.log"
  file_loc_port="Scanned_Target/Basic_Scan/Common_Port_Scan.log"
  file_loc_fast="Scanned_Target/Basic_Scan/Fast_Scan.log"
  file_loc_sS="Scanned_Target/Basic_Scan/Basic_Stealth_Scan.log"
  file_loc_protocol="Scanned_Target/Basic_Scan/Protocol_Support_Scan.log"
  file_loc_tcp="Scanned_Target/Basic_Scan/TCP_Scan.log"
  file_loc_udp="Scanned_Target/Basic_Scan/UDP_Scan.log"
  file_loc_pingport="Scanned_Target/Basic_Scan/Ping_Scan_Port_Disabled_Scan.log"

  case $bs_scan_sc in

    "1" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Ping Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m' #Ping_Scan setup
           if [[ -e $file_loc_ping  ]];
           then
             sleep 2
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Hacking is a form of art, A puzzle to be solved\e[0m "
             sleep 4
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m "
             echo " " >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo $(date) >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " " >> $file_loc_ping
             nmap -sP -iL $IP_FILE_Input >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " "
             cat $file_loc_ping
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information \e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup  "
             sleep 4
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... "
             cd Scanned_Target/Basic_Scan
             touch Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo $(date) >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " " >> Ping_Scan.log
             nmap -sP -iL $IP_FILE_Input >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " "
             cat Ping_Scan.log
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. \e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m "

           fi
      ;; # End of Ping_Scan setup

          # Setup for Service_Detection_Scan
      "2" ) echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Service Detection Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
             if [[ -e $file_loc_sV ]];
             then
               sleep 2
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Give me your version number!!\e[0m"
               sleep 4
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... \e[0m"
               echo " " >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo $(date) >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo " " >> $file_loc_sV
               nmap -sV -iL $IP_FILE_Input >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo " "
               cat $file_loc_sV
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. \e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m "

             else
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup"
               sleep 4
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... "
               cd Scanned_Target
               touch Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo $(date) >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo " " >> Service_Detection_Scan.log
               nmap -sV -iL $IP_FILE_Input >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               cat Service_Detection_Scan.log
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete."
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more InformatioN"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan"
             fi

             ;; #End of Service_Detection_Scan setup

             # Setup for Common_Port_Scan
          "3" ) echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Common Port Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                echo " "
                if [[ -e $file_loc_port ]];
                then
                    sleep 2
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m An Open Door is always great!. Hi Open Port!\e[0m"
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    echo " " >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo $(date) >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo " " >> $file_loc_port
                    nmap -iL $IP_FILE_Input >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo " "
                    cat $file_loc_port
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                else
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                  sleep 4
                   echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    cd Scanned_Target/Basic_Scan
                    touch Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo $(date) >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo " " >> Common_Port_Scan.log
                    nmap -iL $IP_FILE_Input >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    cat Common_Port_Scan.log
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"
                  fi

              ;; #End of Common_Port_Scan Setup

                     # Setup for Fast_Scan
              "4" ) echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Fast Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_fast ]];
                    then
                         sleep 2
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m The faster you are, more sadder the co-operate companies get!\e[0m"
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m "
                         echo " " >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo $(date) >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo " " >> $file_loc_fast
                         nmap -F -iL $IP_FILE_Input >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         sleep 3
                         echo " "
                         cat $file_loc_fast
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"

                     else
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup"
                       sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started..."
                         cd Scanned_Target/Basic_Scan
                         touch Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo $(date) >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " " >> Fast_Scan.log
                         nmap -F -iL $IP_FILE_Input >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " "
                         cat Fast_Scan.log
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information \e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                       fi

               ;; #End of setup for Fast_Scan

              "5" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Basic Stealth Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_sS ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m The Quiter You Are, The More You Hear\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo $(date) >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo " " >> $file_loc_sS
                        nmap -sS -iL $IP_FILE_Input >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        sleep 3
                        echo " "
                        cat $file_loc_sS
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m "

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo $(date) >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " " >> Basic_Stealth_Scan.log
                        nmap -sS -iL $IP_FILE_Input >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " "
                        cat Basic_Stealth_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Basic_Stealth_Scan

              # Setup for Protocol Support Scan
              "6" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m ProtocolSupport Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_protocol ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m A little bit of SMTP, A little bit of SSH, A little bit of FTP\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo $(date) >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo " " >> $file_loc_protocol
                        nmap -sO -iL $IP_FILE_Input >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        sleep 3
                        echo " "
                        cat $file_loc_protocol
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo $(date) >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " " >> Protocol_Support_Scan.log
                        nmap -sO -iL $IP_FILE_Input >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " "
                        cat Protocol_Support_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Protocol_Support_Scan

              #Setup for TCP_Scan
              "7" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m TCP Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_tcp ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Data, a lot of data. Money a lot of Money HEHE!.\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo $(date) >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo " " >> $file_loc_tcp
                        nmap -sT -iL $IP_FILE_Input >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        sleep 3
                        echo " "
                        cat $file_loc_tcp
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo $(date) >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo " " >> TCP_Scan.log
                        nmap -sT -iL $IP_FILE_Input >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo " "
                        cat TCP_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for TCP_Scan

              #Setup for UDP_Scan
              "8" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m UDP Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_udp ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Stream all you want, but i am not paying ;)\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo " " >> $file_loc_udp
                        nmap -sU -iL $IP_FILE_Input >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        sleep 3
                        echo " "
                        cat $file_loc_udp
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo $(date) >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo " " >> UDP_Scan.log
                        nmap -sU -iL $IP_FILE_Input >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo " "
                        cat UDP_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for UDP_Scan

                #Setup for Ping Scan without Port Scanner
              "9" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Ping Scan with Port Scan Disabled\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_pingport ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m FBI Open UP!\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_pingport
                        echo " " >> $file_loc_pingport
                        nmap -sn -iL $IP_FILE_Input >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        sleep 3
                        echo " "
                        cat $file_loc_pingport
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo $(date) >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " " >> Ping_Scan_Port_Disabled_Scan.log
                        nmap -sn -iL $IP_FILE_Input >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        cat Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Ping_Scan_Port_Disabled_Scan

              "0" ) # For moving back
                    User_IP_FILE_Basic_Input

              ;;

              *)
                  echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
                  sleep 3
                 Basic_Scan_Choice_IP

              ;;

  esac

}

User_Input_Netbios_Nikto() #User Input for Netbios and Nikto
{
    IP_NN_Input=" "
    Conti_NN="n"
    while [[ "$Conti_NN" == "n" ]];
    do

      read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter Web Address/IP Address: \e[0m' IP_NN_Input
      echo $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered Web Address/IP Address is: \e[0m' $IP_NN_Input
      read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the Web Address/IP Address [y/n]: \e[0m' Conti_NN

      if [ "$Conti_NN" == "y" ]
      then
        if [ "$Choice" == "2" ]
        then
          Nmap_Nikto_Scan
        elif [ "$Choice" == "3" ]
        then
          Nmap_Netbios_Scan
        fi
    else
      echo " "
      echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
      sleep 2
      echo " "
    fi
      #To check if the choice is Netbios and Nikto and The choice is yes:

  done

}
EXIT_FUN() #Script underneath after finishing of tool
{
  echo " "
  echo " "
  echo -e "                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;35m           Sometimes it's wise to scan before you exploit.           \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] "
  echo -e "                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;35m           More the information, Easier the scan                     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] "
  echo " "
}

User_IP_FILE_Basic_Input
EXIT_FUN