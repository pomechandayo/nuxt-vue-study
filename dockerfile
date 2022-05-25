FROM node:14-alpine

WORKDIR /var/www/html

RUN apk update && \
npm install -g @vue/cli && \
npm install -g @vue/cli-service-global