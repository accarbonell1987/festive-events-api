# Development Dockerfile used with docker-compose 
FROM node:20.9.0-alpine

WORKDIR /app

# Copy package.json and package-lock.json files first
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

COPY . .

RUN chmod +x /app/scripts/docker/local-run.sh

EXPOSE 8080