# # Build stage
# FROM node:16.13.2 AS build

# WORKDIR /test-docker

# COPY package*.json .

# RUN npm install --legacy-peer-deps

# COPY . .

# RUN npm run build

# EXPOSE 80

# CMD ["npm", "start"]




# # Use an official Node.js runtime as a base image
# FROM node:16
# ACTIONS_ALLOW_USE_UNSECURE_NODE_VERSION=true

# # Set the working directory in the container
# WORKDIR /app

# # Copy the package.json and package-lock.json files
# COPY package*.json ./

# # Install application dependencies
# RUN npm install

# # Copy the remaining application code
# COPY . .

# # Build the React app
# RUN npm run build

# # Expose a port (e.g., 80)
# EXPOSE 80

# # Start the React app
# CMD ["npm", "start"]


# Use an official Node.js runtime as the base image
FROM node:16


# Set the working directory in the container
WORKDIR /test-docker


# Copy package.json and package-lock.json to the working directory
COPY package*.json ./


# Install application dependencies
RUN npm install


# Copy all application files to the container
COPY . .


# Build the React application
RUN npm run build


# Expose the port your app runs on
EXPOSE 3000


# Command to run your application
CMD ["npm", "start"]

