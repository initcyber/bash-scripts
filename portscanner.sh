#!/bin/bash
###############################################
## This program asks a user for a port number
###############################################

echo "This program runs against the IP addresses in iplist.txt"
echo "and finds open ports, either specific ports or all"
echo " "
echo " "
echo "IMPORTANT:"
echo "You must run ./ipsweep.sh or have your iplist.txt completed before running this program"
echo "After inputting port number, check portresults.txt for the results"
echo "Enter the specific port you want to check or press enter for all"

###############################################
## Ask for Input for port number
###############################################

read port

if [ port == "" ]
then
for ip in $(cat iplist.txt); do nmap -T4 $ip >> portresults.txt &
done

else
for ip in $(cat iplist.txt); do nmap -p $port -T4 $ip >> portresults.txt &
done
fi
