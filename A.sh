#!/bin/bash



printWithoutArgument () {
echo "possible keys:"
echo "--all ----> key displays the IP addresses and symbolic names of all hosts in the current subnet"
echo "--target ----> key displays a list of open system TCP ports"
}

nmapScan () {
nmap -sP 192.168.1.0/24
echo "-------- // start artp-scan // ----------------------"
arp-scan -l
}


tcpPortsScan () {
#nmap -sT -O localhost
netstat -tlpn | grep LISTEN
}


if [ $# -eq 0 ] 
then
 printWithoutArgument
fi

if [ $1 == "--all" ]
then
nmapScan
fi


if [ $1 == "--target" ]
then
tcpPortsScan
fi
