#!/bin/bash

# Script for committing changes
#Run: ./gitCommit.sh

echo "Checking status:"
git status

echo "Adding all changes..."
git add .

read -p "Commit message (describe the update): " description
git commit -m "$description"

echo "Pushing to origin/main..."
git push origin main

echo "Changes pushed successfully!"
