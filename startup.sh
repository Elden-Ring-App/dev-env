#!/bin/bash

echo "Updating submodules to the latest version..."
git submodule update --init --recursive
git submodule update --remote --merge

echo "Pruning Docker volumes..."
docker volume prune -f

echo "Pruning Docker images..."
docker image prune -f

echo "Pruning Docker system (containers, networks, images)..."
docker system prune -f

# Brings down ALL Docker Compose services, comment this if you dont want to do it
echo "Bringing down Docker Compose services..."
docker compose down

if [ -d "./data/db" ]; then
    echo "Cleaning up the MongoDB data directory..."
    rm -rf ./data/db/*
else
    echo "./data/db directory does not exist. Skipping cleanup."
fi

echo "Rebuilding and starting Docker Compose services..."
docker compose up --build
