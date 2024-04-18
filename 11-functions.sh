#!/bin/bash

USERID=$(id -u)

VALIDATE(){
  echo "Exit status: $1"
  echo "What are you doing: $2"
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
VALIDATE $? "Installing MySql"

echo "Is script proceeding?"