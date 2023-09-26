# Use the official Node.js Alpine image
FROM node:16-alpine
LABEL authors="dani"


# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the local files to the container
COPY .. .

# Expose port 3085
EXPOSE 3085

# Run your app
CMD ["npm", "start"]
