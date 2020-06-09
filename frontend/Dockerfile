FROM node:alpine AS builder

WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run ng build --prod

FROM nginx:alpine
COPY --from=builder /usr/src/app/dist/frontend /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
