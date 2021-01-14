FROM node:alpine as build-stage
WORKDIR /app
COPY backend-example-docker .
RUN npm install
EXPOSE 8000

FROM node:alpine
WORKDIR /app
COPY --from=build-stage /app /app
RUN adduser -D app && \
chown app /app/logs.txt
USER app
ENTRYPOINT ["npm"]
CMD ["start"]
