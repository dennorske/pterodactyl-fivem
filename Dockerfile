FROM ubuntu:20.04

LABEL       author="denNorske" maintainer="den@ducky.rocks"

RUN apt-get update -qq && apt-get install -qq wget git xz-utils unzip curl rsync git

USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
