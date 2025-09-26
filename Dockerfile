FROM --platform=linux/amd64 node:23-alpine3.21

RUN apk upgrade --available

WORKDIR /app

COPY . .

RUN npm install -g npm@11.3.0 && \
    npm install

ENV PORT=8080
EXPOSE 8080

CMD [ "node", "server.js" ]