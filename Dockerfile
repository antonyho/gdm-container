FROM debian:jessie

RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

RUN apt-get install -y python python-dev python-distribute python-pip

RUN git clone https://github.com/dangtrinhnt/gdm

WORKDIR gdm

