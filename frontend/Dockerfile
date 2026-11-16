# VocabMaster frontend: Vite build served by Nginx (Nginx also proxies /api to the backend)
FROM node:22-alpine AS build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY proxy-headers.inc /etc/nginx/conf.d/proxy-headers.inc
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
