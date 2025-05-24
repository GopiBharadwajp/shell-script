#!/bin/bash

USERID=$(id -u )
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ id -ne 0 ]

then 
echo -e"$R Error:: you need to run in root user $N"
else 
echo "run with root access"
fi
VALIDATE(){
    if [ $? -ne 0 ]
 then 
 echo -e "installing $2 is ....$G sucess $N"
else 
echo -e "installing $2 is $r failuer $N"
exit 1
fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then 
echo "my sql not instelled  going to intall it"
dnf install mysql -y
VALIDATE $? "mysql"
else 
echo -e "my sql $Y alredy installed nothimg to do $N"
fi

dnf list installed python3
if [ $? -ne 0 ]
then 
echo "my sql not instelled  going to intall it"
dnf install python3 -y
VALIDATE $? "python3"
else 
echo -e "python3 $Y alredy installed $N nothimg to do"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then 
echo "my sql not instelled  going to intall it"
dnf install nginx -y
VALIDATE $? ""nginx
else 
echo -e  "nginx   $R alredy installed $N nothimg to do"
fi

