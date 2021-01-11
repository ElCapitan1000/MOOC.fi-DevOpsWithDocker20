FROM node:alpine

WORKDIR /mydir
COPY frontend-example-docker .

RUN npm install

RUN adduser -D app 
RUN chown -R app /mydir

USER app

ENV API_URL http://localhost:8000

EXPOSE 5000

RUN whoami

ENTRYPOINT ["npm"]
CMD ["start"]
