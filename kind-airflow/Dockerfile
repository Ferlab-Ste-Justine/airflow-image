FROM apache/airflow:2.2.1
USER root
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
         vim \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
###################
COPY --chown=airflow:root dags /opt/airflow/dags
#ajoute tes dags et ton fichier requirements.txt
COPY --chown=airflow:root requirements.txt /opt/airflow/requirements.txt
###################
RUN pip3 install -r /opt/airflow/requirements.txt
USER airflow