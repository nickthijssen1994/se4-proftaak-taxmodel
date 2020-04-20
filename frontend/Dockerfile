FROM node:12.16.2-alpine AS build
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
RUN $(npm bin)/ng build --prod

FROM nginx:1.17.1-alpine
COPY --from=build /usr/src/app/dist/frontend/ /usr/share/nginx/html
