#!/bin/bash

delay=3
while true; do 
	clear
	cat << EOF 
        please select options:
                             1.Display Disk Utilization.
                             2.Display Ram Utilization.
                             3.Display System Info.
                             4.Display Current Process running in System.
                             0.quit
EOF
read -p "enter your selection [0-3] >"

case "$REPLY" in 
	0)
		break
		;;
	1)
		df -h 
		;;
	2)
		free -h
	       	;;
	3)
		echo "hostname: $USER" ; uptime 
		;;
	4)
		systemctl --type=service --state=running 
		;;
	*)
		echo " Invalid Entry try again"
		;;
	esac
	sleep "$delay"

done
echo " Program terminated"
		
