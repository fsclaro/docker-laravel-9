#!/bin/bash

clear
echo -e "Copying docker files to $1\n"

echo " - docker/* -> $1/docker"
cp -r docker/* $1/docker

echo  " - scripts/* -> $1/scripts"
cp -r scripts/* $1/scripts

echo " - docker-compose.yml -> $1/docker-compose.yml"
cp docker-compose.yml $1

echo " - Dockerfile -> $1/Dockerfile"
cp Dockerfile $1

echo -e "\nDone!!"
