FROM node:alpine AS builder

COPY package.json package-lock.json ./
RUN npm ci && mkdir /frontend && mv ./node_modules ./frontend
WORKDIR /frontend
COPY . .

RUN npm run build-all

FROM nginx:alpine
COPY --from=builder /frontend/dist /usr/share/nginx/html
COPY --from=builder /frontend/nginx.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
