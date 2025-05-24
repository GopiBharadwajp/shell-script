#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
echo "ERROR:: Plese run this script with root acess"
 exit 1

else
echo "you are running with root acess"

fi

dnf install mysql -y
if [ $? -eq 0 ]

then
 echo "installing Mysql is .... SUCESS"

 else
 echo "installing my sql is ... failuer"
  exit 1
 fi