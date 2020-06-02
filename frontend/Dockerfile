FROM node:alpine AS builder

COPY package.json package-lock.json ./
RUN npm ci && mkdir /frontend && mv ./node_modules ./frontend
WORKDIR /frontend
COPY . .

RUN npm run ng build -- --prod --output-path=dist

FROM nginx:alpine
COPY --from=builder /frontend/dist /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
