FROM node:14.17-alpine

WORKDIR /var/app

COPY ./backend .
RUN npm install
