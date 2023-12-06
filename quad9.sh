#!/bin/bash

# Check if the user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Use sed to replace the nameserver
sed -i -r 's/nameserver ([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/nameserver 9.9.9.9/g' /etc/resolv.conf