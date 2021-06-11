FROM node:14.17-alpine

WORKDIR /var/app

COPY ./backend .
# RUN npm i -g adonis-ts-app
RUN npm install
RUN ls
RUN node -v
RUN node ace
