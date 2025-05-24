#!/bin/bash

USERID=$(id -u )

if [ id -ne 0 ]

then 
echo "you need to run in root user "
else 
echo "run with root access"
fi
VALIDATE(){
    if [ $? -ne 0 ]
 then 
 echo "installing $2 is ....sucess"
else 
echo  "installing $2 is failuer"
exit 1
fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then 
echo "my sql not instelled  going to intall it"
dnf install mysql -y
VALIDATE $? "mysql"
fi
else 
echo "my sql alredy installed nothimg to do"
fi

dnf list installed python3
if [ $? -ne 0 ]
then 
echo "my sql not instelled  going to intall it"
dnf install python3 -y
VALIDATE $? "python3"
else 
echo "python3 alredy installed nothimg to do"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then 
echo "my sql not instelled  going to intall it"
dnf install nginx -y
VALIDATE $? ""nginx
else 
echo "nginx alredy installed nothimg to do"
fi

