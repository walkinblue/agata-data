#!/bin/bash
echo "./run-update.sh [''|'module-name']"

if [ -z $1 ] || [ $1 == "services" ]; then
  read -s -p "Enter Gitee token: " gitee_token
fi

echo ""
read -s -p "Enter Github token: " github_token

lslcd cdcdecho ""
echo "Start to update code .... "

if [ -z $1 ] || [ $1 == "commons" ]; then
  cd /root/agatamind/commons
  git pull https://walkinblue@github.com/terran4j/commons.git
  echo "Updated commons code successfully.  "
  mvn compile -DskipTests
  mvn install -DskipTests
  echo "Compile and Install commons code successfully.  "
fi


if [ -z $1 ] || [ $1 == "services" ]; then
  cd /root/agatamind/services
  git pull https://zouma_green_station:${gitee_token}@gitee.com/terran4j-public/services.git
  echo "Updated services code successfully.  "
  mvn compile -DskipTests
  mvn install -DskipTests
  echo "Compile and Install services code successfully.  "
fi

if [ -z $1 ] || [ $1 == "agata-common" ]; then
  cd /root/agatamind/agata-common
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-common.git
  echo "Updated agata-common code successfully.  "
  mvn compile -DskipTests
  mvn install -DskipTests
  echo "Compile and Install agata-common code successfully.  "
fi

if [ -z $1 ] || [ $1 == "agata-common-service" ]; then
  cd /root/agatamind/agata-common-service
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-common-service.git
  echo "Updated agata-common-service code successfully.  "
    mvn compile -DskipTests
    mvn install -DskipTests
    echo "Compile and Install agata-common-service code successfully.  "
fi 

if [ -z $1 ] || [ $1 == "agata-shop" ]; then
  cd /root/agatamind/agata-shop
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-shop.git
  echo "Updated agata-shop code successfully.  "

    rm -f /usr/share/nginx/shop/assets/*.*
    rmdir /usr/share/nginx/shop/assets
    rm -f /usr/share/nginx/shop/*.*
    cp -fr /root/agatamind/agata-shop/dist/* /usr/share/nginx/shop/.

    echo "Published dist to shop in web. "

fi 

if [ -z $1 ] || [ $1 == "agata-shop-service" ]; then
  cd /root/agatamind/agata-shop-service
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-shop-service.git
  echo "Updated agata-shop-service code successfully.  "
    rm -f /root/agatamind/run-shop.sh
    cp -f /root/agatamind/agata-shop-service/run.sh /root/agatamind/run-shop.sh
    chmod u+x /root/agatamind/run-shop.sh
fi 

if [ -z $1 ] || [ $1 == "agata-workshop" ]; then
  cd /root/agatamind/agata-workshop
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-workshop.git
  echo "Updated agata-workshop code successfully.  "

  rm -f /usr/share/nginx/workshop/assets/*.*
  rmdir /usr/share/nginx/workshop/assets
  rm -f /usr/share/nginx/workshop/*.*
  cp -fr /root/agatamind/agata-workshop/dist/* /usr/share/nginx/workshop/.
  echo "Published dist to workshop in web. "

fi 

if [ -z $1 ] || [ $1 == "agata-workshop-service" ]; then
  cd /root/agatamind/agata-workshop-service
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-workshop-service.git
  echo "Updated agata-workshop-service code successfully.  "

  rm -f /root/agatamind/run-workshop.sh
  cp -f /root/agatamind/agata-workshop-service/run.sh /root/agatamind/run-workshop.sh
  chmod u+x /root/agatamind/run-workshop.sh

fi 

if [ -z $1 ] || [ $1 == "agata-wuxing" ]; then
  cd /root/agatamind/agata-wuxing
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-wuxing.git
  echo "Updated agata-wuxing code successfully.  "
fi 

if [ -z $1 ] || [ $1 == "agata-data" ]; then
  cd /root/agatamind/agata-data
  git pull https://walkinblue:${github_token}@github.com/walkinblue/agata-data.git
  echo "Updated agata-data code successfully.  "

    rm -f /root/agatamind/run-update.sh
    cp -f /root/agatamind/agata-data/command/run-update.sh /root/agatamind/run-update.sh
    chmod u+x /root/agatamind/run-update.sh

    rm -f /root/agatamind/run-upload.sh
    cp -f /root/agatamind/agata-data/command/run-update.sh /root/agatamind/run-upload.sh
    chmod u+x /root/agatamind/run-upload.sh
fi 


cd /root/agatamind