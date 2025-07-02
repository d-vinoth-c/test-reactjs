# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose development server port
EXPOSE 3000

# Start the dev server
CMD ["npm", "start"]
