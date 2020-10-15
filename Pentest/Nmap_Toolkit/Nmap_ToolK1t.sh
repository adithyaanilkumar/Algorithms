# !/bin/bash
# Author: Farzan Nobi

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



user_input() # For selecting different type of scans
{
   Choice=" "
  echo $'                      \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Basic Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Advanced Scan\e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Firewalls, IDS, Evasion & Spoofing\e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Nmap Nikto Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Nmap NetBios Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Clear Logs \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] Update Nmap Toolkit \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m] Quit Nmap ToolKit \e[0m'
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' Choice

  echo " "

  if [ "$Choice" == "1" ] # When selecting Basic Scan
  then
      cd bin
      ./Basic_Scan.sh
  elif [ "$Choice" == "2" ] # When Selecting Nmap_NetBios
  then
      cd bin
      ./Advanced_Scan.sh
  elif [ "$Choice" == "3" ] # When selecting Nmap_Nikto
  then
  	  cd bin
      ./FIES_Scan.sh
  elif [ "$Choice" == "4" ]
  then
      cd bin
      ./Nikto_Scan.sh
  elif [ "$Choice" == "5" ]
   then
      cd bin
      ./NetBios_Scan.sh
  elif [ "$Choice" == "6" ]
   then
      cd bin
      ./Logs.sh
  elif [ "$Choice" == "7" ]
   then
      update_toolkit
  elif [ "$Choice" == "8" ]
   then
     echo $'\e[1;91m Have fun Hacking, Cheers Zero_Prime9 :)\e[0m'
     echo " "
     exit
  else
  	echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== You Have Selected An Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
    sleep 2
    banner
    user_input
  fi

}



update_toolkit() #Updation of Tool
{
  banner
  update_file=$(pwd)
  version_check=$(cat Version.md)
  echo " "
  echo $'\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;92m] Gathering Resources...  \e[0m'
  sleep 2
  echo $'\e[1;92m[\e[0m\e[1;77m |/\| \e[0m\e[1;92m] Connecting to Github  \e[0m'
  echo " "
  git clone https://github.com/ZeroPrime9/Nmap_ToolK1t.git 
  version_recheck=$(cat Nmap_ToolK1t/Version.md)
  if [ "$version_check" == "$version_recheck" ]
  then
    echo " "
    echo $'\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;91m] ===========================================  \e[0m'
    echo $'\e[1;92m[\e[0m\e[1;77m |/\| \e[0m\e[1;92m] Nmap_ToolK1t is up to date!.  \e[0m'
    echo $'\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;92m] Loading Nmap_ToolK1t home screen  \e[0m'
    echo $'\e[1;92m[\e[0m\e[1;77m |/\| \e[0m\e[1;91m] ===========================================  \e[0m'
    rm -rf Nmap_ToolK1t
    sleep 8
    banner
    user_input
  else
    echo $'\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;92m] Nmap_ToolK1t needs update, Proceeding to update  \e[0m'
    sleep 2
    echo $'\e[1;92m[\e[0m\e[1;77m |/\| \e[0m\e[1;92m] Updating Nmap ToolKit  \e[0m'
    cd  Nmap_ToolK1t
    mv Nmap_ToolK1t.sh $update_file
    mv CHANGELOG.md $update_file
    mv LICENSE.md $update_file
    mv README.md $update_file
    mv Version.md $update_file
    mv Screenshots $update_file
    cd ..
    rm -rf Nmap_ToolK1t
    printf "\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;92m] Latest version: $version_recheck \e[0m"
    sleep 2
    echo " "
    sleep 2
    echo $'\e[1;92m[\e[0m\e[1;77m |/\| \e[0m\e[1;92m] Nmap ToolKit is updated to the latest version  \e[0m'
    echo $'\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;92m] Relaunch Nmap_ToolK1t and enjoy  \e[0m'
    exit
  fi

}




banner
user_input
