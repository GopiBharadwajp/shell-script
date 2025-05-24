#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
echo "ERROR:: Plese run this script with root acess"
 exit 1

else
echo "you are running with root acess"

fi
dnf list installed mysql

# check alredy installer=d or noy if installed $? is 0 then 
# if not installed  $? is not 0. expressinon is true
if [ $? -ne 0 ]

then
echo "mysql is not installed .... going to intsalll"
dnf install mysql -y
if [ $? -eq 0 ]

then
 echo "installing Mysql is .... SUCESS"

 else
 echo "installing my sql is ... failuer"
  exit 1
 fi

else
echo "mysql  is  alredy install ... nothing todo "


fi





# dnf install mysql -y
# if [ $? -eq 0 ]

# then
#  echo "installing Mysql is .... SUCESS"

#  else
#  echo "installing my sql is ... failuer"
#   exit 1
#  fi