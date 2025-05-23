#!/bin/bash

NUMBER1=100
NUMBER2=200

TIMESTAMP=$(date)
echo "script exuted at: $TIMESTAMP"
SUM=$((NUMBER1+$NUMBER2))

echo "SUM Of $NUMBER1 AND $NUMBER2 is: $SUM