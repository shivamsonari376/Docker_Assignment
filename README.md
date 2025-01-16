# Docker_Assignment
Description

Objective:

The objective of this assignment is to familiarize yourself with Docker and containerization by Dockerizing a simple HTML page using Nginx as the web server.

Requirements:

1. Basic HTML Page:

   - Create a plain HTML page named `index.html` with some content (e.g., "Hello, Docker!").

2. Nginx Configuration:

   - Create an Nginx configuration file named `nginx.conf` that serves the `index.html` page.

   - Configure Nginx to listen on port 80.

3. Dockerfile:

   - Create a `Dockerfile` to define the Docker image.

   - Use an official Nginx base image.

   - Copy the `index.html` and `nginx.conf` files into the appropriate location in the container.

   - Ensure that the Nginx server is started when the container is run.

4. Building the Docker Image:

   - Build the Docker image using the `Dockerfile`.

5. Push the image on ECR

  - Make the public repository and push them on the ECR




# Solution
# Dockerizing a Simple HTML Page with Nginx

## Objective
To understand Docker and containerization by deploying a simple HTML page using Nginx as the web server.

## Files
1. **index.html**: A basic HTML page with a "Hello, Docker!" message.
2. **nginx.conf**: Custom Nginx configuration to serve the HTML page on port 80.
3. **Dockerfile**: Docker configuration to build the container using the official Nginx image.

## Steps
1. Create the `index.html` file with the desired content.
2. Write the `nginx.conf` file to serve the HTML page.
3. Build the Docker image using the `Dockerfile`:
 # Build the Docker image
docker build -t shivamsonari376/my-nginx-app:latest .

 # Push image to Dockerhub
docker login
docker tag shivamsonari376/my-nginx-app:latest shivamsonari376/my-nginx-app:latest
docker push shivamsonari376/my-nginx-app:latest



# Run the Docker container
docker run -d -p 80:80 shivamsonari376/my-nginx-app:latest


# Push docker image to ECR
Steps to push the image to Amazon Elastic Container Registry (ECR):

Authenticate Docker to your ECR:


aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <account-id>.dkr.ecr.<your-region>.amazonaws.com

Create a repository in ECR (if not already created):
aws ecr create-repository --repository-name shivam_docker


Tag your Docker image with ecr repo URL


docker tag shivamsonari376/my-nginx-app:latest <account-id>.dkr.ecr.<your-region>.amazonaws.com/my-nginx-app:latest

Push the image to ECR:

docker push <account-id>.dkr.ecr.<your-region>.amazonaws.com/my-nginx-app:latest

# Run the container from ECR 
docker pull <account-id>.dkr.ecr.<your-region>.amazonaws.com/my-nginx-app:latest
docker run -d -p 80:80 <account-id>.dkr.ecr.<your-region>.amazonaws.com/my-nginx-app:latest

