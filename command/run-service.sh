echo "Start the service  .... "
APP_ENV=online

if [ $1 == "agata-workshop-service" ]; then
  cd /root/agatamind/
  rm -rf ./$1.jar
  cp ./$1/target/$1.jar ./$1.jar
  nohup java -jar ./$1.jar --spring.profiles.active=${APP_ENV} -Xms256m -Xmx1024m > /dev/null 2>&1 &
  echo "Start $1 service successfully.  "
fi

if [ $1 == "agata-shop-service" ]; then
  cd /root/agatamind/
  rm -rf ./$1.jar
  cp ./$1/target/$1.jar ./$1.jar
  nohup java -jar ./$1.jar --spring.profiles.active=${APP_ENV} -Xms256m -Xmx1024m > /dev/null 2>&1 &
  echo "Start $1 service successfully.  "
fi
