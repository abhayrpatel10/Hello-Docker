FROM node:10-alpine
RUN mkdir -p /node_modules && chown -R node:node /
WORKDIR /
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 8080
CMD [ "node", "index.js" ]