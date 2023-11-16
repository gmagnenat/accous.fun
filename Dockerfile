FROM node:19-alpine3.16

USER node

RUN mkdir -p /home/node/app/node_modules

WORKDIR /home/node/app

COPY --chown=node:node . .

RUN npm ci

EXPOSE 3000

CMD ["node", "app.js"]

