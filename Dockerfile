FROM debian:jessie
MAINTAINER Antony HO <ntonyworkshop@gmail.com>

RUN apt-get update
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential
RUN apt-get install -y python python-dev python-distribute python-pip libssl-dev
WORKDIR /root
RUN git clone https://github.com/dangtrinhnt/gdm

RUN pip install virtualenv
RUN /bin/bash -c 'virtualenv /root/.venv/gdm'
RUN /bin/bash -c 'source /root/.venv/gdm/bin/activate'
WORKDIR /root/gdm
RUN tail -n +2 requirements.txt > requirements-1.txt
RUN pip install -r requirements-1.txt

RUN mkdir -p /root/data
WORKDIR /root/data

ENTRYPOINT ["python","/root/gdm/gdm.py"]
