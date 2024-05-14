FROM node:14

WORKDIR /usr/src/app

COPY test-consumer/package*.json test-consumer/
COPY test-consumer/consumer.js test-consumer/

RUN cd test-consumer && npm install

COPY test-producer/package*.json test-producer/
COPY test-producer/server.js test-producer/

RUN cd test-producer && npm install

CMD ["node", "test-consumer/consumer.js"]
