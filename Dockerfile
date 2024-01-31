FROM quay.io/centos/centos:centos7

MAINTAINER jmonlong@ucsc.edu

# Prevent dpkg from trying to ask any questions, ever
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN yum install -y git tar bzip2 make gcc gcc-c++ libstdc++-static zlib-devel

WORKDIR /build

RUN git clone https://github.com/fbattke/manta.git && \
    cd manta && \
    mkdir build && cd build && \
    ../configure --jobs=1 --prefix=/manta && \
    make install

ENV PATH $PATH:/manta/bin

WORKDIR /home
