#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\E[31M"
G="\E[32M"
N="\E[0M"

echo "Script started executing at: $TIMESTAMP"

VALIDATE(){
 if [ $1 -ne 0 ]
 then
    echo -e "$2...$R FAILURE $N"
    exit 1
else 
    echo -e "$2...$G SUCCESS $N"
fi
}

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1 # manually exist if error comes.
else
   echo "You are a super user."
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MySql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing MySql"

dnf install docker -y &>>$LOGFILE
VALIDATE $? "Installing Docker"


