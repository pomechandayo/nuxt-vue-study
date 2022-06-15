FROM node:14-alpine

WORKDIR /var/www/html

RUN apk update && \
npm install -g @vue/cli && \
npm install -g @vue/cli-service-global && \
npm install -g npm

WORKDIR /var/www/html/vue-study/nuxt-study
CMD ["npm", "run", "dev"]