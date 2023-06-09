#!/bin/bash

read -s -p "Enter Gitee token: " gitee_token
echo ""
read -s -p "Enter Github token: " github_token

echo "Start to update code .... "
cd /root/agatamind/commons
git pull https://walkinblue@github.com/terran4j/commons.git
echo "Updated commons code successfully.  "

cd /root/agatamind/services
git pull https://zouma_green_station:${gitee_token}@gitee.com/terran4j-public/services.git
echo "Updated services code successfully.  "

cd /root/agatamind/agata-common
git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-common.git
echo "Updated agata-common code successfully.  "

cd /root/agatamind/agata-common-service
git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-common-service.git
echo "Updated agata-common-service code successfully.  "

cd /root/agatamind/agata-shop
git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-shop.git
echo "Updated agata-shop code successfully.  "

cd /root/agatamind/agata-shop-service
git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-shop-service.git
echo "Updated agata-shop-service code successfully.  "

cd /root/agatamind/agata-workshop
git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-workshop.git
echo "Updated agata-workshop code successfully.  "

cd /root/agatamind/agata-workshop-service
git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-workshop-service.git
echo "Updated agata-workshop-service code successfully.  "

cd /root/agatamind/agata-wuxing
git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-wuxing.git
echo "Updated agata-wuxing code successfully.  "

cd /root/agatamind