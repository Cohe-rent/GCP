# Use official Node.js image
FROM node:20

# Set working directory inside the container
WORKDIR /app

# Copy dependency definitions
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Expose the port your app runs on (update if different)
EXPOSE 8080

# Start your app (adjust if needed)
CMD ["node", "myapp.js"]
