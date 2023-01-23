# From node:13.12.0-alpine
# WORKDIR /app
# ENV PATH /app/node_modules/ .bin:PATH
# COPY package.json ./
# COPY package-lock.json ./
# RUN npm install 
# EXPOSE 3000
# ENTRYPOINT ["npm", "start"]

# Step 1
FROM node:13.12.0-alpine
RUN mkdir /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build
# Stage 2
FROM nginx:1.17.1-alpine
COPY --from=build-step /app/build /usr/share/nginx/html
