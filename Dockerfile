# Use a base image. In this case, we're using nginx as the web server.
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML files and other static assets into the container
COPY ./src /usr/share/nginx/html

# Expose port 80 to allow external access to the web server
EXPOSE 8080

# Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
