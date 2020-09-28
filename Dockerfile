FROM node:12-alpine3.11

WORKDIR /app

COPY /build ./build
COPY /serve.js .

RUN npm install -g serve

CMD ["serve", "-n", "-l", "3000", "-s", "build"]
