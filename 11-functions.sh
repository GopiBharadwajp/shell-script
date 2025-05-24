#!/bin/bash

USERID=$(id -u )

if [ id -ne 0 ]

then 
echo "you need to run in root user "

else 

echo "run with root access"

fi

dnf install mysql
exit 1
fi

if [ #? -ne 0]

then 
echo "installing my sql sucesss"

else 
echo  "my sql not installed   g=failuer"

exit 1
fi

else 
echo "my sql alredy installed"
fi

