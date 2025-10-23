#!/bin/bash
CONTAINER_NAME=mysql_veille_falaise
VOLUME_PATH=/home/louberehc/veille_falaise/database
ROOT_PASSWORD=pw
MYSQL_TAG=8.0-debian
PORTS=3306:3306

# Initiate, or simply start the database if created beforehand.
if [ `sudo docker ps -a | grep ${CONTAINER_NAME} | wc -c` = 0 ]
then
    `sudo docker run --name ${CONTAINER_NAME} -v ${VOLUME_PATH}:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=${ROOT_PASSWORD} -p ${PORTS} -d mysql:${MYSQL_TAG} >/dev/null` 
    echo "${CONTAINER_NAME} has been created."
else
    `sudo docker start ${CONTAINER_NAME} >/dev/null` 
    echo "${CONTAINER_NAME} has been started."   
fi

