#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "please run this with root user acess"
   exit 1
fi
echo "installing ngnix"
dnf install nginx -y

if [ $? -ne 0 ]; then   # to check the exit code of above command
   echo "installation failed"
   exit 1
else
    echo "installation success"
fi
