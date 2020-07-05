
FROM node:9.6.1
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g @angular/cli@1.7.1
COPY . /usr/src/app

