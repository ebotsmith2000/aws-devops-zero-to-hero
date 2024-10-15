#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull victorwasonga/simple-python-flask-app

# Run the Docker image as a container
Docker run -d -p 8000:8000 victorwasonga/simple-python-flask-app
