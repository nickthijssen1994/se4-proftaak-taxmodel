FROM node:12.16.2-alpine AS builder
COPY . ./frontend
WORKDIR /frontend
RUN npm install
RUN $(npm bin)/ng build --prod

FROM nginx:1.16.1-alpine
COPY --from=builder /frontend/dist/frontend/ /usr/share/nginx/html
