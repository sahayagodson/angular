FROM ubuntu:latest
WORKDIR /APP
COPY . .
RUN npm install
RUN npm run build --prod