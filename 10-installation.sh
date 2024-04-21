#!/bin/bash

# installation steps for mysql

    USERID=$(id -u)

    if [$USERID -ne 0]

    then

       echo "PLease run this script with root access"

    else
       echo "You are a super user"
    fi

   dnf install mysql -y # -y is mandatory if we dont mention shell script will keep on waiting

    echo "is script proceeding"