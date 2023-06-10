# Use an official lightweight Node.js image.
FROM node:14-slim

# Set the working directory in the Docker image
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the application dependencies inside the Docker image
RUN npm install

# Copy the rest of the application files
COPY . .

# Make port 3000 available outside the image
EXPOSE 3000

# Define the command that should be executed
# when the Docker container starts.
CMD [ "npm", "start" ]
