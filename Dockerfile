FROM ubuntu:16.04

WORKDIR /src
COPY . /src

ENV DEBIAN_FRONTEND noninteractive
RUN cd /src
RUN chmod 755 ./install.sh
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils
RUN apt-get install nano

ENV DEBIAN_FRONTEND teletype
EXPOSE 8002

CMD tail -f /dev/null
