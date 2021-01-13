FROM node:alpine as build-stage
WORKDIR /usr/app
COPY frontend-example-docker .
RUN npm install && \
npm run build

FROM node:alpine
WORKDIR /usr/app
RUN npm install -g serve && \
adduser -D app && \
chown -R app /usr
USER app
COPY --from=build-stage /usr/app/dist /usr/app/dist
CMD serve -s -l 5000 dist
