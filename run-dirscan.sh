#!/bin/bash

REMOTE_HOSTNAME=$1

gobuster dir --url http://${REMOTE_HOSTNAME} -w /usr/share/wordlists/dirb/big.txt

