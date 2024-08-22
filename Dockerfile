FROM ubuntu:22.04

WORKDIR /root
RUN apt-get update && apt-get install -y wget tmux openjdk-17-jdk lsb-release python3 python3-pip curl iproute2

# fetch mylocalton binary
RUN wget https://github.com/neodix42/MyLocalTon/releases/latest/download/MyLocalTon-x86-64.jar

# install ton-http-api
RUN pip3 install --user ton-http-api

# ENTRYPOINT [ "sleep", "infinity" ]
ENTRYPOINT [ "/usr/bin/java", "-jar", "MyLocalTon-x86-64.jar", "nogui", "ton-http-api", "explorer", "debug" ]
