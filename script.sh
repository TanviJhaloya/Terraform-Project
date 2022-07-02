#!/bin/bash

yum update -y

yum install httpd -y 

systemctl start httpd 

systemctl enable httpd 

yum install docker -y 

systemctl start docker 

systemctl enable docker 

yum install git -y

docker pull 714312/sampleimage:v1