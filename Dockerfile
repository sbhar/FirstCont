# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install Nginx
RUN apt-get update && \
    apt-get install -y nginx

# Remove the default Nginx site configuration (optional)
RUN rm /etc/nginx/sites-enabled/default

# Expose port 8080
EXPOSE 8080

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
