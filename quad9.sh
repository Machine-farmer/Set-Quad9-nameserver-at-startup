#!/bin/bash


# Check if the user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


# Use sed to replace the nameserver
sed -i 's/nameserver 127.0.0.53/nameserver 9.9.9.9/g' /etc/resolv.conf
