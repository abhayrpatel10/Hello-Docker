FROM node:10-alpine
RUN mkdir -p /home/DOCKER-HELLOWORLD-NODEJS/node_modules && chown -R node:node /home/DOCKER-HELLOWORLD-NODEJS
WORKDIR /home/node/app
COPY package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 8080
CMD [ "node", "index.js" ]