FROM ubuntu:16.04

WORKDIR /mydir
COPY frontend-example-docker .

RUN apt-get update && \
apt-get install -y curl && \
apt-get install -y npm && \
curl -sL https://deb.nodesource.com/setup_10.x | bash && \
apt-get install -y nodejs && \
npm install && \
useradd -m app 

RUN chown -R app /mydir
USER app

ENV API_URL http://localhost:8000

EXPOSE 5000

RUN whoami

ENTRYPOINT ["npm"]
CMD ["start"]
