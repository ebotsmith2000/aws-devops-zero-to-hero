#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull docker push ebotsmith/simple-python-flask-app:latest

# Run the Docker image as a container
docker run -d -p 5001:5001 docker push ebotsmith/simple-python-flask-app
