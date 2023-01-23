From node:13.12.0-alpine
WORKDIR /usr/share/nginx/html
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
