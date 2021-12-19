#!/bin/bash

REMOTE_HOSTNAME=$1

ports=$(nmap -p- --min-rate=1000 -T4 ${REMOTE_HOSTNAME} | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//)
nmap -p$ports -sV ${REMOTE_HOSTNAME}

