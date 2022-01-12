helm install --namespace=airflow\
--timeout=10m0s\
--values=/home/shell/helm/values-airflow-8.5.3.yaml\
--version=8.5.3\
--wait=true community-airflow /home/shell/helm/airflow-8.5.3.tgz