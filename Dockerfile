# Build stage
FROM node:16.13.2 AS build

WORKDIR /test-docker

COPY package*.json .

RUN npm install --legacy-peer-deps

COPY . .

RUN npm run build

EXPOSE 80

CMD ["npm", "start"]