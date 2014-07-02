#
# Redis container for running Redis queries to a Redis Server or Redis Server Container. Can execute one off commands or
# enter interactive mode.
#
# VERSION: 1.0
# DOCKER-VERSION: 1.0.0
# AUTHOR: Jared Markell <jared@shopigniter.com>
# TO_RUN: docker run -i -t --rm=true redis-cli -h 1.2.3.4 ping
#

FROM ubuntu:14.04

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
    apt-get -y install redis-tools &&\
    apt-get clean

ENTRYPOINT ["/usr/bin/redis-cli"]
