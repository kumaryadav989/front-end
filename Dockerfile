# # Use an official Node.js image as the base image
# FROM node:alpine

# # Set the working directory
# WORKDIR /app

# # Copy package.json and package-lock.json
# COPY package*.json ./

# # Install dependencies
# RUN npm install joi

# # Copy the rest of the application files
# COPY . .

# # Build the application
# RUN npm run build

# # Expose the port the application will run on
# EXPOSE 3000

# # Start the application
# CMD ["npm", "start"]

FROM node:16.5
COPY . .
CMD ["npm", "start"]
