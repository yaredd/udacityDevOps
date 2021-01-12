#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=yaredd/udacity:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment k8-udacity --image=docker.io/yaredd/udacity:latest

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment k8-udacity --name=k8-udacity --type=NodePort --port 8000 --target-port 80
kubectl port-forward services/k8-udacity 8000:8000