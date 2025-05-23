#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
echo "ERROR:: Plese run this script with root acess"

else
echo "you are running with root acess"

fi

dnf install mysql -y