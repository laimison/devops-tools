#!/bin/bash

ip=`dig +short myip.opendns.com @resolver1.opendns.com`

echo "Your IP is ${ip}"
echo

whois ${ip} | grep -e netname -e descr -e country -e route -e role > /tmp/myip

subnet=`cat /tmp/myip | grep route | awk -F ' ' '{print $NF}'`
description=`cat /tmp/myip | grep -v route: | awk -F ':' '{print $NF}' | sort -u | sed  's/^[\t ]*//g;s/[\t ]*$//g' | tr -d '\n'`

echo "Subnet ${subnet} is owned by $description"
