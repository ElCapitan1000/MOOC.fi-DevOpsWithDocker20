FROM ubuntu:16.04

WORKDIR /mydir
COPY backend-example-docker .

RUN apt-get update && \
apt-get install -y curl && \
curl -sL https://deb.nodesource.com/setup_10.x | bash && \
apt-get install -y nodejs && \
npm install && \
useradd -m app 
 
RUN chown -R app /mydir
USER app 

ENV FRONT_URL http://localhost:5000

EXPOSE 8000

RUN whoami

ENTRYPOINT ["npm"]
CMD ["start"]
