echo "Start the service  .... "
APP_ENV=online

if [ $1 == "agata-workshop-service" ]; then
  if [ -z $2 ] || [ $2 == "start" ]; then
    cd /root/agatamind/
    rm -rf ./$1.jar
    cp ./$1/target/$1.jar ./$1.jar
    nohup java -jar ./$1.jar --spring.profiles.active=${APP_ENV} -Xms256m -Xmx1024m > /dev/null 2>&1 &
    echo "Start $1 service successfully.  "
  else if [ $2 == "stop" ]; then
    pid=`ps -ef|grep $1|grep -v grep|awk '{print $3}' `
    kill -9 ${pid}
  fi
fi

if [ $1 == "agata-shop-service" ]; then
    if [ -z $2 ] || [ $2 == "start" ]; then
      cd /root/agatamind/
      rm -rf ./$1.jar
      cp ./$1/target/$1.jar ./$1.jar
      nohup java -jar ./$1.jar --spring.profiles.active=${APP_ENV} -Xms256m -Xmx1024m > /dev/null 2>&1 &
      echo "Start $1 service successfully.  "
    else if [ $2 == "stop" ]; then
      pid=`ps -ef|grep $1|grep -v grep|awk '{print $3}' `
      kill -9 ${pid}
    fi
fi
