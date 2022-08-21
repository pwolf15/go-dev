FROM ubuntu:20.04

RUN apt-get -y update && \
    apt-get -y install wget 

RUN wget -q https://go.dev/dl/go1.19.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz 

ENV PATH=$PATH:/usr/local/go/bin

RUN go version

RUN apt-get install -y git
