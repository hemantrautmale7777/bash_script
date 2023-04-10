#!/bin/bash

cat << EOF

please select:
             1.Display disk utilization.
	     2.Display Ram utilzation.
	     3.Display system info.
             4.Display current process running in system
	     0.quit
EOF
echo -n enter the selection [0-3]:
read sel
case $sel in
	0) echo "program ended" ;;
	1)df -h ;;
	2)free -h ;;
	3)echo "HOSTNAME: $USER" ; uptime ;;
	4)systemctl --type=service --state=running ;;
	
	*)
		echo "invalid entry"
		exit
esac

	


