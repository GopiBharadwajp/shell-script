#!/bin/bash
AMI_ID="ami-09c813fb71547fc4f"
SG_ID="sg-03a031274602046a1"
INSTANCES=("mongobd" "redis" "mysql" "rabbitmq" "catalogue" "user" "cart" "shipping" "payment" "dispatch" "frontend")
ZONE_ID="Z0095891220EQ8FJXWFW1"
DOMAINNAME="gorobo.site"

for instances in ${INSTANCES[@]}

do
    INSTANCE_ID=$(aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t2.micro 
    --security-group-ids sg-03a031274602046a1 --tag-specifications "ResourceType=instance,Tags=[{Key=Name, Value=test}]"  
    --query "Instances[0].instanceId" --output text)
     if [ $instance != "frontend" ]
     then 
     IP=aws ec2 describe-instances --instance-ids $INSTANCES_ID --query 
     "Reservations[0].Instances[0].PrivateIpAddress" --output text

     else
     IP=aws ec2 describe-instances --instance-ids $INSTANCES_ID --query 
     "Reservations[0].Instances[0].PublicIpAddress" --output text
     

     done

