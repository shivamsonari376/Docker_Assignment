# Use the official Nginx base image
FROM nginx:latest

# Copy the custom HTML file to the default Nginx HTML location
COPY index.html /usr/share/nginx/html/index.html

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for the container
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
