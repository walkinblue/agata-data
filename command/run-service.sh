#!/bin/bash

APP_ENV=online
APP_NAME=$1
APP_J=${1//-/\.}

is_exist(){
  pid=`ps -ef|grep ${APP_J}.jar|grep -v grep|awk '{print $2}' `
  if [ -z "${pid}" ]; then
   return 1
  else
    return 0
  fi
}

start(){
  is_exist
  if [ $? -eq "0" ]; then
    echo "${APP_NAME} is already running. pid=${pid} ."
  else
    echo "Start the service  .... ${APP_NAME}"
    cd /root/agatamind/
    rm -rf ./${APP_NAME}.jar
    cp ./${APP_NAME}/target/${APP_NAME}.jar ./${APP_NAME}.jar
    if [ -z $3 ]; then
      nohup java -jar ./${APP_NAME}.jar --spring.profiles.active=${APP_ENV} -Xms256m -Xmx1024m > /dev/null 2>&1 &
      echo "Start ${APP_NAME} service successfully.  "
    else
      if [ $3 == "console" ]; then
        nohup java -jar ./${APP_NAME}.jar --spring.profiles.active=${APP_ENV} -Xms256m -Xmx1024m
      fi
    fi
  fi
}

stop(){
  is_exist
  if [ $? -eq "0" ]; then
    kill -9 ${pid}
  else
    echo "${APP_NAME} is not running"
  fi
}

status(){
  is_exist
  if [ $? -eq "0" ]; then
    echo "${APP_NAME} is running. Pid is ${pid}"
  else
    echo "${APP_NAME} is NOT running."
  fi
}

if [ -z $1 ]; then
  echo "please input app name: ./run-service.sh [APP-NAME] [start|stop|status(default)]."
else
  case "$2" in
  "start")
    start
    ;;
  "stop")
    stop
    ;;
  "status")
    status
    ;;
  *)
    status
    ;;
  esac
fi

