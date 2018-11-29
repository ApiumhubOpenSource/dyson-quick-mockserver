FROM node:10.14.0-alpine

LABEL maintainer="dev@apiumhub.com"

RUN npm install -g dyson

WORKDIR /api-fakes

EXPOSE 8080

CMD dyson . 8080