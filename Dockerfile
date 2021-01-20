FROM jupyter/datascience-notebook

USER root

RUN apt-get update && \
    apt-get --yes install \
    apt-utils \
    vim

RUN pip install pymysql mysql.connector

USER $NB_UID