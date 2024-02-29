#FROM node:18.19.1
FROM node:18.19.1-bookworm-slim
RUN npm install -g npm@9.2.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
