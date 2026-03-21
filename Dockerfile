FROM ubuntu:latest

# Non-interactive install
ENV DEBIAN_FRONTEND=noninteractive

# Update + install nginx
RUN apt update && apt install nginx -y

# Copy website files
COPY . /var/www/html

# Expose port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
