Requirements : nmap

How to use this script

Clone this repository
" git clone https://github.com/justinjohnson86/ipsweep.git "

Make Shell Scripts Executable
" chmod +x ipsweep.sh "
" chmod +x portscanner.sh "

Starting Off:

These scripts are designed to sweep your current IP address range that you specify.

To sweep your ip address range (uses Ping)
" ./ipsweep.sh xxx.xxx.xxx (where xxx.xxx.xxx is the first 3 octets of your ip address range) "

This saves a file called "ipsweep.txt"

Then you can cat this file to see your ip addresses 
"cat ipsweep.txt"

**PLEASE NOTE** this will only identify machines that accept ping requests

--------------------------

Now to scan open ports type 
" ./portscanner.sh"

This will prompt you for a port number, or if you want to scan all ports simply press enter

This saves a file called "portresults.txt". Simply cat or open this file to see results.

--------------------------
Version 0.1

