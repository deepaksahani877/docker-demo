FROM node:18-alpine as nodejs-18
WORKDIR /app
COPY package.json yarn.lock ./
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]    

