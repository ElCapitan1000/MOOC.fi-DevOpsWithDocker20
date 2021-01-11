FROM node:alpine

WORKDIR /mydir
COPY backend-example-docker .

RUN npm install

RUN adduser -D app 
RUN chown -R app /mydir

USER app 

ENV FRONT_URL http://localhost:5000

EXPOSE 8000

RUN whoami

ENTRYPOINT ["npm"]
CMD ["start"]
