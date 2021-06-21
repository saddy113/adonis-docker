FROM node:14.17

WORKDIR /var/app

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./backend .
RUN npm install
