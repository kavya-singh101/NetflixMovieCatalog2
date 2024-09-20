#!/bin/bash

# Step 1: Delete all Docker containers forcefully
echo "Stopping and removing all Docker containers..."
sudo docker rm -f $(sudo docker ps -aq)

# Step 2: Delete all Docker images
echo "Removing all Docker images..."
sudo docker rmi -f $(sudo docker images -aq)

# Step 3: Remove existing repository and its child directories
REPO_PATH="home/ubuntu/NetflixMovieCatalog2"  # Replace with the actual path to your repo
# echo "Removing existing repository at $REPO_PATH..."

# Step 5: Enter the newly cloned repository
cd "$REPO_PATH" || exit
git pull https://github.com/kavya-singh101/NetflixMovieCatalog2.git
sudo echo "Entered the repository directory: $(pwd)"

# Step 6: Build the Docker image using the Dockerfile
echo "Building Docker image from the Dockerfile..."
sudo docker build -t netflix_movie_catalog .

# Step 7: Run a container from the built image
echo "Running the Docker container..."
sudo docker run -d -p 80:8080 --name movie_catalog netflix_movie_catalog

echo "Process completed successfully!"