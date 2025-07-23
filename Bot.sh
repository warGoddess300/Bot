#!/usr/bin/bash

#telling the computer which shebang i'm using

#warGoddess300

#training coding bash

#output to ask the user to select a command

echo -e "Hello $USER,\nwhich command do you want me to execute for you: ?"

#an array of characters or strings which will be used in the case (that reminds me the switch in C++) 

array=("useping" "useIRC" "usenetcat")

#a for loop to generate the number with each array index

for i in {0..2}; do
	echo -e "Select a command: $i. ${array[i]}"

done

#input from user if user enter a number according to sizeof(index)

read -p "Enter a number according selecting a command output: " array_num


case $array_num in
	0)
		read -p "Enter a domain name or IP address: " ip_domain
		ping $ip_domain
		;;

	1)
		read -p "Enter an IRC server or IRC IP address: " irc_server
		#irc command

		echo "irc unavailable"
		;;

	2)
		read -p "Enter a command to use netcat: " netcat_use
		#netcat command after
		echo "netcat command unavailable"
		;;

	*)
		echo "Invalid command"
		;;
esac

