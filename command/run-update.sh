#!/bin/bash

read -s -p "Enter Gitee token: " gitee_token
echo ""
read -s -p "Enter Github token: " github_token

echo "Start to update code .... "

if [ $1 eq "commons" ] || [ -z $1]; then
  cd /root/agatamind/commons
  git pull https://walkinblue@github.com/terran4j/commons.git
  echo "Updated commons code successfully.  "
fi


if [ $1 eq "services" || -z $1]; then
  cd /root/agatamind/services
  git pull https://zouma_green_station:${gitee_token}@gitee.com/terran4j-public/services.git
  echo "Updated services code successfully.  "
fi 

if [ $1 eq "agata-common" || -z $1]; then
  cd /root/agatamind/agata-common
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-common.git
  echo "Updated agata-common code successfully.  "
fi 

if [ $1 eq "agata-common-service" || -z $1]; then
  cd /root/agatamind/agata-common-service
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-common-service.git
  echo "Updated agata-common-service code successfully.  "
fi 

if [ $1 eq "agata-shop" || -z $1]; then
  cd /root/agatamind/agata-shop
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-shop.git
  echo "Updated agata-shop code successfully.  "
fi 

if [ $1 eq "agata-shop-service" || -z $1]; then
  cd /root/agatamind/agata-shop-service
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-shop-service.git
  echo "Updated agata-shop-service code successfully.  "
fi 

if [ $1 eq "agata-workshop" || -z $1]; then
  cd /root/agatamind/agata-workshop
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-workshop.git
  echo "Updated agata-workshop code successfully.  "
fi 

if [ $1 eq "agata-workshop-service" || -z $1]; then
  cd /root/agatamind/agata-workshop-service
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-workshop-service.git
  echo "Updated agata-workshop-service code successfully.  "
fi 

if [ $1 eq "agata-wuxing" || -z $1]; then
  cd /root/agatamind/agata-wuxing
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-wuxing.git
  echo "Updated agata-wuxing code successfully.  "
fi 

if [ $1 eq "agata-data" ] || [ -z '$1']; then
  cd /root/agatamind/agata-data
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-data.git
  echo "Updated agata-data code successfully.  "
fi 


cd /root/agatamind