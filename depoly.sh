#!/bin/bash

read -p 'Project Name: ' projectName
read -p 'Project Domain: ' projectDomain

cp docker-compose.example docker-compose.yml

sed -i "s/YOUR_PROJECT_NAME/$projectName/g" docker-compose.yml
sed -i "s/YOUR_PROJECT_DOMAIN.com/$projectDomain/g" docker-compose.yml

sed -i "s/YOUR_PROJECT_DOMAIN.com/$projectDomain/g" docker-compose.yml

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