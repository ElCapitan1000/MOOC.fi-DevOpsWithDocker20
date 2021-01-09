FROM ubuntu:16.04

WORKDIR /mydir
COPY frontend-example-docker .
RUN apt-get update 
RUN apt-get install -y curl
RUN apt-get install -y npm
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN npm install

EXPOSE 5000

ENTRYPOINT ["npm"]
CMD ["start"]
