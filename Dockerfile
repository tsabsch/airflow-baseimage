FROM puckel/docker-airflow:latest

USER root

RUN apt-get update && apt-get install -y libgtk2.0-dev
RUN pip install --upgrade pip

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

ADD fruits-360 /fruits
USER airflow
