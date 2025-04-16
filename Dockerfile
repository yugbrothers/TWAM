# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Start the app
CMD [ "node", "app.js" ]

# Your app listens on port 3000 (change if needed)
EXPOSE 3000
