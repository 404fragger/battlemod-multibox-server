FROM node:20.12.2-slim

# Go to the app folder
WORKDIR /app

# Copy only what you actually need
COPY package.json .env main.cjs bundle.jsc ./

# Install your dependencies
RUN npm install --omit=dev

# Run the app
CMD ["node", "main.cjs"]