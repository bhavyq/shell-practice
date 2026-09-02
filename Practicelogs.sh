#!/bin/bash 
USERID=$(id -u)
Log_folder="/var/log/shell-script"
Log_file="/var/log/shell-script/$0.log" #whatever script we are running $0 gives script name

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

dnf install nginx -y &>> $Log_file
Validation $? "Installing Nginx ..."


dnf install mysql -y &>> $Log_file
Validation $? "Installing mysql ...."


dnf install nodejs -y &>> $Log_file
Validation $? "Installing nodejs ..."