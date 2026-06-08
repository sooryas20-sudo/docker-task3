# Base image is official nginx
FROM nginx:latest

# Set who created this image
LABEL maintainer="soorya"

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom HTML as default page
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
