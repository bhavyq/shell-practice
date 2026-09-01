#!/bin/bash
USERID=$(id -u)

if [ USERID ne 0 ]; then
   echo "please run this with root user acess"
fi
echo "installing ngnix"
dnf install ngnix -y
