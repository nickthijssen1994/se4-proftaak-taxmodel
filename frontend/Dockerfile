FROM node:12.16.2 AS build

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update && apt-get install -yq google-chrome-stable

WORKDIR /frontend
ENV PATH /frontend/node_modules/.bin:$PATH

COPY package.json /frontend/package.json
RUN npm install
RUN npm install -g @angular/cli

COPY . /frontend

RUN ng build --prod --output-path=dist

FROM nginx:1.17.1-alpine
COPY --from=build /frontend/dist /usr/share/nginx/html
