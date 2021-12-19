#!/bin/bash

REMOTE_HOSTNAME=$1

ffuf -w /usr/share/wordlists/dirb/big.txt -u http://${REMOTE_HOSTNAME} -H "HOST: FUZZ.${REMOTE_HOSTNAME}" -t 200 -fl 10

