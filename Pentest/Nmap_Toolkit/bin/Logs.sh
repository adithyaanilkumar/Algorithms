# !/bin/bash
# Author: Farzan Nobi Aka Zero_Prime9
# Nmap_Toolk1t Subtool Log Control System
banner() # Introduction Banner
{
  clear
  version_check=$(cat Version.md)
  printf "           \e[1;77m  _        _______  _______  _______  _________ _________ _______  _______ _     _   __   _________ \e[0m\n"
  printf "           \e[1;77m ( (    /|(       )(  ___  )(  ____ ) \__   __/(  ___  )(  ___  )( \      | \    /\ /  \  \__   __/ \e[0m\n"
  printf "           \e[1;77m |  \  ( || () () || (   ) || (    )|    ) (   | (   ) || (   ) || (      |  \  / / \/) )    ) ( \e[0m\n"
  printf "           \e[1;77m |   \ | || || || || (___) || (____)|    | |   | |   | || |   | || |      |  (_/ /    | |    | |        \e[0m\n"
  printf "           \e[1;77m | (\ \) || |(_)| ||  ___  ||  _____)    | |   | |   | || |   | || |      |   _ (     | |    | | \e[0m\n"
  printf "           \e[1;77m | | \   || |   | || (   ) || (          | |   | |   | || |   | || |      |  ( \ \    | |    | | \e[0m\n"
  printf "           \e[1;77m | )  \  || )   ( || )   ( || )          | |   | (___) || (___) || (____/\|  /  \ \ __) (_   | | \e[0m\n" 
  printf "           \e[1;77m |/    )_)|/     \||/     \||/           )_(   (_______)(_______)(_______/|_/    \/ \____/   )_( \e[0m\n" 
  printf "\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                    Welcome to Nmap ToolKit\e[0m                       \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m        Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m          \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m         Follow me on Instagram and Twitter: @Zero_Prime9\e[0m         \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m      Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t      \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                Visit: https://www.zeroprime9.com                 \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                         Version: $version_check \e[0m                           \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;93m________________________________________________________________________________\e[0m\n\n"
  printf "                                    \e[1;91m::  Disclaimer: Developers assume no liability\e[0m     \e[1;91m::\e[0m\n"
  printf "                                    \e[1;91m::  Search your victim, before you annihilate ;)\e[0m   \e[1;91m::\e[0m\n"

  #Checking if the directory exists or not.
  file_loc="Scanned_Target"
  if [ -e $file_loc ]
  then
     echo -e $"                                    \e[1;92m::\e[1;92m         Check Scanned_Target for logs\e[0m           \e[1;92m::\e[0m\n"
  else
      mkdir Scanned_Target
      echo -e $"                                    \e[1;92m::\e[1;92m         File Scanned_Target Created\e[0m             \e[1;92m::\e[0m\n"
  fi
  printf "                      \e[1;93m________________________________________________________________________________\e[0m\n\n"
}

Logs_DB()
{
  log_choice=" "
  clear
  banner
  #BASIC SCAN LOGS
  file_basic="Scanned_Target/Basic_Scan/"
  #NMAP NETBIOS LOGS
  file_Nmap_NetBios="Scanned_Target/Nmap_NetBios/"
  #NMAP NIKTO LOGS
  file_Nmap_Nikto="Scanned_Target/Nmap_Nikto/"
  #Firewall,IDS,Evasion and Spoofing Logs
  file_FIES="Scanned_Target/Firewall_IES/"


  echo $'                      \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Clear Logs of Basic Scan\e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Clear Logs of Advanced Scan                       \e[1;91m      [Will Release in #V3.0 Update]\e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Clear Logs of Firewalls IDS Evasion and Spoofing \e[1;91m   \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Clear Logs of Nmap NetBios Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Clear Logs of Nmap Nikto Scan   \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m] Back \e[0m'
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose which log to clear [1-5 or 0]: \e[0m' log_choice

  Conti_log="n"

  if [ "$log_choice" == "1" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo    $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Clear Logs of Basic Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[0m'
      read -p $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Basic Scan [y/n]: \e[0m' Conti_log
      echo " "

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
        if [ -f $file_basic ]
        then
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been already Cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m Taking You Back To Main Screen!     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 3
          banner
          user_input
        else
          cd Scanned_Target
          cd Basic_Scan
          rm *
          sleep 2
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;92m Taking you to Main Screen!   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 6
          cd ../..
          banner
          user_input
        fi

      else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

  elif [ "$log_choice" == "2" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo     $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Clear Logs of Advanced Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
      read -p  $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Advanced Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
        if [ -f $file_basic ]
        then
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been already Cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m Taking You Back To Main Screen!     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 3
          banner
          user_input
        else
          cd Scanned_Target
          cd Advanced_Scan
          rm *
          sleep 2
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;92m Taking you to Main Screen!  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 6
          cd ../..
          banner
          user_input
        fi

      else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

  elif [ "$log_choice" == "3" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo     $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Clear Logs of Firewalls IDS Evasion and Spoofing \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
      read -p  $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Firewalls IDS Evasion and Spoofing [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
        if [ -f $file_FIES ]
        then
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been already Cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m Taking You Back To Main Screen!     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 3
          banner
          user_input
        else
          cd Scanned_Target
          cd Firewall_IES
          rm *
          sleep 2
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;92m Taking you to Main Screen!  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 6
          cd ../..
          banner
          user_input
        fi
      else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

  elif [ "$log_choice" == "4" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo     $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Nmap NetBios Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
      read -p  $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Nmap NetBios Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
        if [ -f $file_Nmap_NetBios ]
        then
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been already Cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m Taking You Back To Main Screen!     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 3
          banner
          user_input
        else
          cd Scanned_Target
          cd Nmap_NetBios
          rm *
          sleep 2
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;92m Taking you to Main Screen!  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 6
          cd ../..
          banner
          user_input
        fi
      else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

  elif [ "$log_choice" == "5" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo     $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Nmap Nikto Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
      read -p  $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Nmap Nikto Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
        if [ -f $file_Nmap_Nikto ]
        then
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been already Cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m Taking You Back To Main Screen!     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 3
          banner
          user_input
        else
          cd Scanned_Target
          cd Nmap_Nikto
          rm *
          sleep 2
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;92m Taking you to Main Screen!  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 6
          cd ../..
          banner
          user_input
        fi
      elif [ "$log_choice" == "0" ]
      then
        cd ..
        ./Nmap_ToolK1t.sh
      else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

  else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
  fi

}
Logs_DB