#!/usr/bin/env bash

kubectl create namespace airflow

RELEASE_NAME=airflow

helm repo add apache-airflow https://airflow.apache.org
helm install $RELEASE_NAME apache-airflow/airflow \
--namespace airflow \
--values ../values.yaml