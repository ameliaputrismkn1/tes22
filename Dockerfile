# Use the specified Node.js image.
FROM node:14.21.2-alpine

# Create and change to the app directory.
WORKDIR /app

# Set the environment variable for the port.
ENV PORT 5000

# Copy local code to the container image.
COPY . .

# Install production dependencies.
RUN npm install

# Expose the port the app runs on.
EXPOSE 5000

# Run the web service on container startup.
CMD [ "npm", "run", "start" ]
