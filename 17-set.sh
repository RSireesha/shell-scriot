#!/bin/bash

set -e

USERID=$(id -u)



if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1 # manually exist if error comes.
else
   echo "You are a super user."
fi

dnf install mysfaffql -y
dnf install git -y

echo "is script proceeding?"