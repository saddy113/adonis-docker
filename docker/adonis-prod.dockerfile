FROM node:14.17 as build-stage

WORKDIR /var/app
COPY ./backend .
COPY .env .
RUN npm install
RUN npm run build

FROM node:14.17-alpine as production-stage
WORKDIR /var/app
COPY --from=build-stage /var/app/build .
RUN npm ci --production
RUN npm install pm2 -g
COPY ./ecosystem.config.js .
ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
