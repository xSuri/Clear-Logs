#!/bin/bash

#Clearing Generating Logs from clearLogs.sh

echo "Removing Logs... \n"

echo "Clear Log? (y/n) \n"
read clearLog

yes="y"
yourpath="log.txt"  # < -- Your path to logs

if [ "$clearLog" = "$yes" ];
    then

    echo "Removing in progress..."

    rm -R "$yourpath"

    echo "\n Removed Logs"

fi

echo "\nProgram stoped."