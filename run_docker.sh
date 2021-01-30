#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . -t python-proj:latest

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -dt python-proj:latest -p 9100:9000
