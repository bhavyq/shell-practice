#!/bin/bash 
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "please run this with root user acess"
   exit 1
fi

Validation()
{
    if [ $1 -ne 0 ]; then   # to check the exit code of above command
   echo "$2 failed"
   exit 1
else
    echo "$2 succeed"
fi
}

dnf install nginx -y
Validation $? "Installation"


dnf install mysql -y
Validation $? "Installation"


dnf install nodejs -y
Validation $? "Installation"