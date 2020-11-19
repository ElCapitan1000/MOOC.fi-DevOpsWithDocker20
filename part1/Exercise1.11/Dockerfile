FROM ubuntu:16.04

WORKDIR /mydir
COPY backend-example-docker .
RUN apt-get update 
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN npm install

EXPOSE 8000

ENTRYPOINT ["npm"]
CMD ["start"]
