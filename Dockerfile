FROM node:lts-alpine3.13
EXPOSE 38080
COPY src .
ENTRYPOINT node my-webapp.js
