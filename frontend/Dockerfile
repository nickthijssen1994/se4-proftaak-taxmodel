FROM node:12.16.2-alpine AS build
COPY . ./frontend
WORKDIR /frontend
RUN npm install
RUN $(npm bin)/ng build --prod

FROM nginx:1.17.1-alpine
COPY --from=build /frontend/dist/frontend/ /usr/share/nginx/html
