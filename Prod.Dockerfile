FROM node:alpine as a builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build


FROM nginx:alpine

COPY --from=builder /app/build /usr/share/nginx/html


