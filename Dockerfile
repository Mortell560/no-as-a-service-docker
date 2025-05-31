FROM node:alpine3.22

WORKDIR /app

ENV PORT=3000

COPY package.json /app

RUN npm install -g npm@latest && npm install && npm fund

COPY . /app

CMD [ "npm start" ]