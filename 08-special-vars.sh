#!/bin/bash


echo "all variables  passed  to the scripy: $@ "
echo "Number of varibles: $#"
echo "script name: $0"
echo "current directory: $PWD"
echo "user running of scrippt: $USER"
echo "Home direcetory of user: $HOME"
echo "pid of the script: $$"
sleep 10 &
echo "pid of last command in background: $!"