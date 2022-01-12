ARG BASE_IMG="apache/airflow:2.1.4-python3.8"
FROM $BASE_IMG
WORKDIR /

USER root

## install dependencies
COPY ./requirements.txt /
RUN pip install -r requirements.txt

# Specify the User that the actual main process will run as
USER airflow
