#!/bin/bash
## Take input from user for IP Address Network
echo "This tool allows users to scan IP Addresses in their network"
echo "After entering the network, this will import the list into iplist.txt"
echo "Enter the first three octets of IP Address you wish to scan"
read ipinput
if [ ipinput == "" ]
then
echo "You forgot an IP Address!"

else
for ip in `seq 1 254`; do 
ping -c 1 $ipinput.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> iplist.txt &
done
fi
echo " "
echo "Complete - the list can be found in file iplist.txt"
echo " "
echo "If you wish to check the network for open ports (either all or specific) run ./portscanner.sh"

