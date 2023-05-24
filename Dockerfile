# Use an official Node.js runtime as the base image
FROM node:16.20-alpine

# Set the working directory inside the container
WORKDIR ./

ENV PLATFORM 'Amazon ECS'

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app will listen on
EXPOSE 3000

# Set the command to run the app when the container starts
CMD [ "node", "script.js" ]
