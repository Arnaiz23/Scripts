#!/bin/bash

echo "How many minutes?"

read minutes

clear

seconds=minutes*60; 
date1=$((`date +%s` + $seconds)); 
echo "Countdown: $minutes minutes"
while [ "$date1" -ge `date +%s` ]; do 
	echo -ne "$(date -u --date @$(($date1 - `date +%s` )) +%H:%M:%S)\r"; 
done
