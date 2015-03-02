#Dockerfile
FROM phusion/baseimage:0.9.15
MAINTAINER marc brown <marc@22walker.co.uk> v0.0.1
EXPOSE 8989


RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC \
  && echo "deb http://apt.sonarr.tv/ master main" | sudo tee /etc/apt/sources.list.d/sonarr.list \
  && apt-get update \
  && apt-get install nzbdrone
