#!/bin/bash
echo "[root@localhost ~]# cd /"
cd /
echo "[root@localhost ~]# mkdir docker"
mkdir docker
echo "[root@localhost ~]# cd docker"
cd docker

sudo bash -c "cat >docker_compose_tomcat.yaml<<EOF
version: '3'

services:
  tomcat8:
    image: tomcat:8
    container_name: my-tomcat8-container
    ports:
      - "8080:8080"

EOF"
echo "[root@localhost ~]# vi docker_compose_tomcat.yaml"
vim docker_compose_tomcat.yaml
echo "[root@localhost ~]# docker-compose -f docker_compose_tomcat.yaml up"
docker-compose -f docker_compose_tomcat.yaml up