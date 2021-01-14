FROM node:alpine

WORKDIR /mydir
COPY backend-example-docker .

RUN npm install && \
adduser -D app && \
chown -R app /mydir

USER app 

ENV FRONT_URL http://localhost:5000

EXPOSE 8000

ENTRYPOINT ["npm"]
CMD ["start"]
