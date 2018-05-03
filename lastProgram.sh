#!/bin/bash
LastCode=$?
echo -e "Last code is $LastCode so... " 
if [[ $LastCode -eq 0 ]];then
	echo "Last program exit succefuly"
else
	echo "Last program exit not succefuly is dmesg: "
	sleep 1.5s;
	dmesg
fi;
