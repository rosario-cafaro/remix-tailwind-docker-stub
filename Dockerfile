FROM node:19.7-alpine

ENV TAILWIND_MODE=watch

WORKDIR /usr/src/remix-tailwind

COPY package*.json ./

RUN npm cache clean -f
RUN npm install -g npm@latest

RUN npm install

COPY . .

USER node

EXPOSE 3000 8002

CMD [ "npm", "run", "dev" ]


