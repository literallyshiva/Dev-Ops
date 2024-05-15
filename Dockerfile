# Use an official Nginx image from the Docker hub
FROM nginx:alpine

# Remove the default nginx index page
RUN rm /usr/share/nginx/html/index.html

# Copy the custom HTML file to the nginx document root
COPY index.html /usr/share/nginx/html

# Expose port 80 to the host
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]

