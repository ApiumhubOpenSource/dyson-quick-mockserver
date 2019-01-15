FROM node:10.14.0-alpine

LABEL maintainer="dev@apiumhub.com"

RUN npm install -g dyson nodemon

WORKDIR /api-fakes

EXPOSE 8080

CMD nodemon --watch . --exec dyson . 8080
