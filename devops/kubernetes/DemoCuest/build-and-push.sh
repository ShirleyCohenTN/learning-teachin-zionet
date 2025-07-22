#!/bin/bash

# Load .env file
set -a
source .env
set +a

# Define services and paths
declare -A services=(
  ["todoaccessor"]="./Accessors/ToDoAccessor"
)

# Build and push loop
for name in "${!services[@]}"; do
  path="${services[$name]}"
  image="${DOCKER_REGISTRY}/${name}"

  echo "🔨 Building $image from $path..."
  docker build -t "$image" -f "$path/Dockerfile" .  

  echo "☁️ Pushing $image..."
  docker push "$image"
done
