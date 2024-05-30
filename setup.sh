#!/usr/bin/bash
Name=Hacking Tools Installer
clear
figlet -c $Name
echo " "
read -p "Do you want to continue installing setup? [y/n] : " answer
case $answer in
	y)
		clear
		figlet -c $Name
		apt-get update
		apt-get upgrade
		apt-get install figlet
		apt-get install git
		bash venom.sh
		;;
	n)
		echo " "
		echo -e "\e[1;31m Aborting the installation.... \e[0m"
		exit
		;;
	*)
		echo " "
		echo "I don't understand you"
		exit
		;;
esac
