#! /bin/usr/bash


echo '


 ▄▄▄▄▄▄▄▄▄▄▄  ▄            ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░░▌▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ 
▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          
▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌ ▄▄▄▄▄▄▄▄ 
▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌▐░░░░░░░░▌
▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌ ▀▀▀▀▀▀█░▌
▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌       ▐░▌
▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
 ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀ 



'
echo ' Software: OLOG'
echo ' Developer: ODOT!'
echo ' Version: 1.0'

echo ''
echo ''


# Goal is to create a keylogger that will email the results to host.
echo 'WARNING: Please have a proxy running prior to entering IP.'
sleep 4
echo ''
echo 'Enter IP: '
read ip

echo ''
echo 'Now Activating Scan...'

echo ''
echo 'Please wait...'

# gathering whois log
whois $ip >> ologwhois

# gathering dig log
dig $ip >> ologdig

echo 'Loading WHOIS results...'
echo ''
echo ''
cat ologwhois

echo ''
echo ''

echo 'Loading DIG results...'
echo ''
echo ''
cat ologdig

echo ''
echo ''

# Using Nmap Commands to go deeper with recon.

#echo 'Do you want to map the network of the ip currently scanned?'
#read mapans

# if statement
# if [[ $mapans == 'y' ]]
# then
#	sudo nmap -sS -sC -sV -Pn $ip >> olognetmaplog
#else 
#	break
#fi

echo ''
echo ''

echo 'Scan Complete'

sleep 2

echo ''
echo ''
echo ' Thanks for using OLOG!'
