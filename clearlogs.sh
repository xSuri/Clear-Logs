#!/bin/bash

echo "Clear logs \n"

echo "Clear all logs? (y/n) \n"
read logsAll

yes="y"
no="n"

if [ "$logsAll" = "$yes" ];
    then
    echo "Removing..."
    cd /var/log/
    rm -R auth.log
    rm -R syslog
    rm -R messages
    rm -R mysql
    rm -R apache2
    rm -R apt
    rm -R lastlog
    rm -R faillog
    rm -R openvpn
    rm -R postgresql
    rm -R private
    rm -R user.log
    cd ..
    rm -R log
    mkdir log
    echo "All logs removed"
fi

if [ "$logsAll" = "$no" ];
    then
    echo "Stop (Dont Remove Logs)"
fi

echo "Generate Logs..."

cd /home/suri/inne/scripts/clearlogsSYS/

touch log.txt
chmod 755 log.txt
echo 'cd /var/log/ \n' >> log.txt
echo 'rm -R auth.log' >> log.txt
echo 'rm -R syslog' >> log.txt
echo 'rm -R messages' >> log.txt
echo 'rm -R mysql' >> log.txt
echo 'rm -R apache2' >> log.txt
echo 'rm -R apt' >> log.txt
echo 'rm -R lastlog' >> log.txt
echo 'rm -R faillog' >> log.txt
echo 'rm -R openvpn' >> log.txt
echo 'rm -R postgresql' >> log.txt
echo 'rm -R private' >> log.txt
echo 'rm -R user.log' >> log.txt
echo 'rm -R rm -R log' >> log.txt


echo "Log generate in file log.txt"
