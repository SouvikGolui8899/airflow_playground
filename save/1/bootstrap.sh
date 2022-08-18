#!/usr/bin/env bash

mkdir -p ./{logs,dags,plugins}
#sudo useradd  -u 50000 -g 0 -M -r -s /bin/bash -c 'Airflow User' airflow
#sudo chown -R airflow:0 ./{logs,dags,plugins}
sudo chown -R $(id -u):0 ./{logs,dags,plugins}

sudo docker-compose up -d