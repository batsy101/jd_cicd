#Using the base alpine image to run nginx server
FROM nginx:alpine

# Copying your application code (index.html) to the container
COPY index.html /usr/share/nginx/html

# Expose the container's port 
EXPOSE 80
