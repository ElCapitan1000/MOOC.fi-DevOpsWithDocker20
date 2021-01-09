#!/bin/bash

echo "I am the script"
git --version
docker --version

# clone the app to build
#git clone https://github.com/docker-hy/frontend-example-docker
# clone the Dockerfile to build the app
#git clone https://github.com/ElCapitan1000/app-for-exercise3.3

ls -l


if [ -z $1 ]  || [ -z $2 ] || [ -z $3 ] || [ -z $4 ]; then
    echo "USAGE: sudo docker run -it -v /var/run/docker.sock:/var/run/docker.sock app-exercise3.2 
	<repo_url> <repo docker name> <dockerid> <dockerpassword>"
    exit
fi

app_name=app-for-exercise3.3

#url=$1
#docker_name=$2
docker_id=elcapitan1000
#docker_password=$4


# build, tag and push image
docker build -t $app_name .
docker tag $app_name $docker_id/$app_name
#docker push $docker_id/$app_name

docker run -d --rm -p 5000:5000 --name app-33 $app_name
#docker ps

echo "$@"
echo "$0: $1 $2 $3 $4"
echo "$# arguments"
echo "$app_name"

