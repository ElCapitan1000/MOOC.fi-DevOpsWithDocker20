#!/bin/bash

echo git --version
echo docker --version

echo "-- clone the app to build and the Dockerfile to build the app --"
git clone 'https://github.com/ElCapitan1000/app-for-exercise3.3'

if [ -z $1 ]  || [ -z $2 ] || [ -z $3 ]; then
    echo "!!! You must provide the arguments: <dockerid> <dockerpassword> <appname>
	 to push to docker registry. Use whatever <appname> you want"	  
    exit
fi

docker_id=$1
docker_password=$2
app_name=$3

echo "-- build, tag and push image --"
docker build -t $app_name 'app-for-exercise3.3/.'
docker tag $app_name $docker_id/$app_name

echo "-- login to docker --"
echo "$docker_password" | docker login -u $docker_id --password-stdin


echo "-- start to push to $docker_id/$app_name --"
docker push $docker_id/$app_name

echo "Run the container with:
	sudo docker run -it -p 5000:5000 $3"




