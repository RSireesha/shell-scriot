#!/bin/bash

USERID=$(id -u)

VALIDATE(){
 if [ $1 -ne 0 ]
 then
    echo "$2...FAILURE"
    exit 1
else 
    echo "$2...SUCCESS"
fi
}

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1 # manually exist if error comes.
else
   echo "You are a super user."
fi

dnf install mysql -y
VALIDATE $? "Installing MySql"

dnf insatll git -y
VALIDATE $? "Installing Git"

