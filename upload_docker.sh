#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=yaredd/udacity:latest

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
# tag local docker image to upload to github
docker tag udacity-cloud-devops-project:latest yaredd/udacity:latest

# Step 3:
# Push image to a docker repository
docker push yaredd/udacity:latest