FROM node:alpine

WORKDIR /mydir
COPY frontend-example-docker .

RUN npm install && \
adduser -D app && \
chown -R app /mydir

USER app

ENV API_URL http://localhost:8000

EXPOSE 5000

ENTRYPOINT ["npm"]
CMD ["start"]
