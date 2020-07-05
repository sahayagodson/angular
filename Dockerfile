#stage 1

FROM node:latest as node
WORKDIR /APP
COPY . .
RUN npm install
RUN npm run build --prod

#stage 2
FROM ubuntu:latest
COPY --from=node /app/dist/ANGULAR /usr/share/ubuntu/html