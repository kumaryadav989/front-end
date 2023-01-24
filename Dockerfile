# From node:13.12.0-alpine
# WORKDIR /app
# ENV PATH /app/node_modules/ .bin:PATH
# COPY package.json ./
# COPY package-lock.json ./
# RUN npm install 
# EXPOSE 3000
# ENTRYPOINT ["npm", "start"]

# Step 1
# FROM node:12.22.12-alpine
# RUN mkdir /app
# WORKDIR /app
# COPY ./package.json 
# RUN npm install
# COPY . .
# RUN npm run build
# EXPOSE 3000

# FROM node:alpine
# WORKDIR /app
# COPY package.json ./
# COPY package-lock.json ./
# COPY ./ ./
# RUN npm i
# EXPOSE 3000
# CMD ["npm", "run", "build"]

FROM node:alpine
WORKDIR /usr/src/app
COPY build /usr/src/app

# COPY package.json ./
CMD ["npm", "start"]
EXPOSE 3000



# FROM nginx:1.17.1-alpine
# COPY --from=builder /app/build /usr/share/nginx/html
# COPY ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf
