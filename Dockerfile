FROM ubuntu:14.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
WORKDIR /
RUN \
  apt-get update && apt-get install -y curl tar g++
RUN \
  curl -Lo cling.tar.bz2 https://ecsft.cern.ch/dist/cling/current/cling-Ubuntu-14.04-64bit-5842d86a2f.tar.bz2
RUN \
  tar -xf cling.tar.bz2 &&\
  rm cling.tar.bz2 
RUN \
  mv /cling-* /cling &&\
  ln -s /cling/bin/* /usr/bin
