FROM node:14.16.1-alpine3.13

RUN apk add --no-cache tzdata
ENV TZ='America/Sao_Paulo'

WORKDIR /app

COPY package*.json ./
RUN yarn

COPY . .
EXPOSE 8080

CMD ["node", "index.js"]