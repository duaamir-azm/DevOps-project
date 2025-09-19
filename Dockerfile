# Use Node 20 (Vite ko ye chahiye)
FROM node:20-alpine

# Work directory
WORKDIR /app

# Copy package.json and lock file
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Expose Vite dev/prod port
EXPOSE 5173

# Start app in dev mode (vite dev server)
CMD ["npm", "run", "dev", "--", "--host"]
