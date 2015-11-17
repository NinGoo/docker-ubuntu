FROM        ubuntu:14.04.3
MAINTAINER  ningoo@dtstack.com

# Using mirrors.163.com for Ubuntu update sources
# and install extra tools
RUN echo "deb http://mirrors.163.com/ubuntu/ precise main restricted universe multiverse" > /etc/apt/sources.list \
 && echo "deb http://mirrors.163.com/ubuntu/ precise-security main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb http://mirrors.163.com/ubuntu/ precise-updates main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb http://mirrors.163.com/ubuntu/ precise-proposed main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb http://mirrors.163.com/ubuntu/ precise-backports main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb-src http://mirrors.163.com/ubuntu/ precise main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb-src http://mirrors.163.com/ubuntu/ precise-security main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb-src http://mirrors.163.com/ubuntu/ precise-updates main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb-src http://mirrors.163.com/ubuntu/ precise-proposed main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb-src http://mirrors.163.com/ubuntu/ precise-backports main restricted universe multiverse" >> /etc/apt/sources.list \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive && apt-get install -y wget vim.tiny \
 &&apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
