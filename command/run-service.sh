APP_ENV=online

is_exist(){
  pid=`ps -ef|grep $1|grep -v grep|awk '{print $3}' `
  if [ -z "${pid}" ]; then
   return 1
  else
    return 0
  fi
}

start(){
  is_exist
  if [ $? -eq "0" ]; then
    echo "$1 is already running. pid=${pid} ."
  else
    echo "Start the service  .... $1"
    cd /root/agatamind/
    rm -rf ./$1.jar
    cp ./$1/target/$1.jar ./$1.jar
    nohup java -jar ./$1.jar --spring.profiles.active=${APP_ENV} -Xms256m -Xmx1024m > /dev/null 2>&1 &
    echo "Start $1 service successfully.  "
  fi
}

stop(){
  is_exist
  if [ $? -eq "0" ]; then
    kill -9 ${pid}
  else
    echo "$1 is not running"
  fi
}

status(){
  is_exist
  if [ $? -eq "0" ]; then
    echo "$1 is running. Pid is ${pid}"
  else
    echo "$1 is NOT running."
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

