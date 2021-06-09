FROM ubuntu:20.04

ENV TZ=Europe/Warsaw
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
   
RUN apt update && apt upgrade -y && \
    apt install -y \
    git \
    vim \
    openjdk-14-jdk \
    maven 

RUN mkdir /opt/code 

WORKDIR /opt/code

COPY sourcecode.txt .

CMD sleep 300