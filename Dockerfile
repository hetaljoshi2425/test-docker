# Build stage
FROM node:16.13.2 AS build

WORKDIR /test-docker

COPY package*.json .

RUN npm install --legacy-peer-deps

COPY . .

RUN npm run build

# Run stage
FROM nginx:alpine

COPY --from=build /test-docker/public/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]