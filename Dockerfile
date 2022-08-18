FROM apache/airflow:2.3.0-python3.8
#USER root
#RUN apt-get update \
#  && apt-get install -y --no-install-recommends \
#         vim git \
#  && apt-get autoremove -yqq --purge \
#  && apt-get clean \
#  && rm -rf /var/lib/apt/lists/*
#ARG AIRFLOW_UID
USER airflow
#RUN usermod -g 0 airflow