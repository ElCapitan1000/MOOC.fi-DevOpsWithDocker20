FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update -y
RUN apt-get install -y git

RUN apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common 
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"

RUN apt-get update 
RUN apt-get install -y docker-ce

RUN git --version && docker --version

# search the error here
COPY app-to-build .

RUN ls -l

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]

