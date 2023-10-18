# Use an official Node runtime as the base image
FROM node:16

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json into the directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Set environment variables
ENV DB_HOST=mongodb
ENV DB_PORT=27017
ENV DB_USER=root
ENV DB_PASS=root
ENV DB_NAME=test

# Make port 3001 available to the outside world
EXPOSE 3001

# Define the command that starts the application
CMD ["node", "index.js"]