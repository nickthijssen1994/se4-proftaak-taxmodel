FROM node:12.16.2 AS build

COPY package.json /usr/frontend/
WORKDIR /usr/frontend
RUN npm install
RUN ng build --prod

COPY ./ /usr/frontend

FROM nginx:1.17.1-alpine
RUN rm -rf /usr/share/nginx/html/*
COPY ./dev/nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/frontend/dist/frontend /usr/share/nginx/html
