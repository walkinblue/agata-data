APP_ENV=online

is_exist(){
  pid=`ps -ef|grep $1|grep -v grep|awk '{print $2}' `
  if [ -z "${pid}" ]; then
   return 1
  else
    return 0
  fi
}
if [ -z $1 ]; then
  echo "please input app name: ./run-service.sh [APP-NAME] [start|stop|status(default)]."
else
    if [ $2 == "start" ]; then
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
    else
      if [ $2 == "stop" ]; then
        is_exist
        if [ $? -eq "0" ]; then
          echo "kill $1. pid=${pid} ."
          kill -9 ${pid}
        fi
      else
        if [ -z $2 ] || [ $2 == "status" ]; then
          is_exist
          if [ $? -eq "0" ]; then
            echo "$1 is running. pid=${pid} ."
          fi
        fi
      fi
    fi
fi