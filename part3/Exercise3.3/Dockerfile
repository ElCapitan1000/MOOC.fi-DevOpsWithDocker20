FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update -y && \
apt-get install -y git && \
apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"

RUN apt-get update && \
apt-get install -y docker-ce && \
git --version && docker --version 

COPY script.sh .

RUN chmod +x script.sh && ls -l

ENTRYPOINT ["./script.sh"]

