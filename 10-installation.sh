#!/bin/bash

# installation steps for mysql

    USERID=$(id -u)

    if [$USERID -ne 0]

    then

       echo "PLease run this script with root access"
       exit 1 # manually exit if error comes

    else
       echo "You are a super user"
    fi

   dnf install mysql -y # -y is mandatory if we dont mention shell script will keep on waiting
   
   if [$? -ne o]
   then 
       echo "Installation of mysql...FAILURE"
       exit 1
   else
       echo "Installation of mysql...SUCCESS"
   fi
   
   dnf install git -y

   if [$? -ne o]
   then 
       echo "Installation of git...FAILURE"
       exit 1
   else
       echo "Installation of git...SUCCESS"
   fi


    echo "is script proceeding"