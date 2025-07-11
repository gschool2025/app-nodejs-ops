# Use an official Node.js runtime as base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# App runs on port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
