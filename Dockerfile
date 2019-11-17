FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm install
COPY ./ ./

ADD src /usr/src/app/src
ADD public /usr/src/app/public

EXPOSE 3000

RUN npm build

CMD [ "npm", "start" ]
