#!/bin/bash
#Authors: Aren & Hiei
#Version: 1.0

#Add this script in /etc/init.d

FILE="/etc/issue"

ip=$(ip addr | grep inet.*brd | sed 's/^.*inet //;s/ brd.*$//;s/^//;2,$ d')
echo "$(lsb_release -d | cut -d":" -f2 | sed 's/^\s//') \n \l" > $FILE
echo "IP: $ip" >> $FILE
echo "" >> $FILE
