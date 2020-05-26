FROM node:12.16.2-alpine AS build
COPY . ./frontend
WORKDIR /frontend
RUN npm install
RUN npm install -g protractor
RUN webdriver-manager update
RUN webdriver-manager start
RUN $(npm bin)/ng e2e
RUN $(npm bin)/ng build --prod

FROM nginx:1.17.1-alpine
COPY --from=build /frontend/dist/frontend/ /usr/share/nginx/html
