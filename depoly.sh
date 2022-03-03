#!/bin/bash

if [ -z "$1" ]
then
    echo "[ERROR] Please input PROJECT_NAME arguments!"
    exit
fi

if [ -z "$2" ]
then
    echo "[ERROR] Please input PROJECT_DOMAIN arguments!"
    exit
fi


cp docker-compose.example docker-compose.yml

sed -i "s/YOUR_PROJECT_NAME/$1/g" docker-compose.yml
sed -i "s/YOUR_PROJECT_DOMAIN.com/$2/g" docker-compose.yml

sed -i "s/YOUR_PROJECT_DOMAIN.com/$2/g" docker-compose.yml

DIR="./src/"

if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo "[INFO] docker composer runing. ${DIR}..."
  docker-compose up -d

else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "[ERROR] ${DIR} not found. Can not continue."
  exit 1
fi