FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3001

ENV DB_HOST=mongo_host
ENV DB_PORT=27017
ENV DB_NAME=snake_game
ENV DB_USER=user
ENV DB_PASS=password

CMD [ "node", "index.js" ]
