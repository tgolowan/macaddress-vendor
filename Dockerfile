FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get install -y curl
COPY input.txt /home/input.sh
