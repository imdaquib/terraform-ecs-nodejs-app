FROM node:alpine

WORKDIR /src

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD [ "node","app.js" ]