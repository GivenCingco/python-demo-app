Here’s the README without the code snippet.

---

# Python Application with Docker Build & Deployment

This repository contains a **Python application** that is automatically **built into a Docker image** using a GitHub Actions workflow. The workflow triggers on a push to the `main` branch, ensuring that any updates to the code are continuously deployed as Docker images.

## Features

- **Automated Docker Image Building**: Automatically builds the application into a Docker image whenever code changes are pushed to the `main` branch.
- **Continuous Deployment to Docker Hub**: After building the Docker image, the workflow pushes it to a Docker Hub repository.
- **Efficient Build with Docker Caching**: Uses caching to reduce build time, optimising repeated workflows.

## GitHub Actions Workflow Overview

The **GitHub Actions workflow** is set up to automate the Docker build and deployment process. Here’s a breakdown of each step in the workflow:

1. **Trigger**: The workflow is triggered by any code push to the `main` branch.
   
2. **Permissions Setup**: The workflow uses GitHub secrets (`DOCKER_USERNAME` and `DOCKERHUB_TOKEN`) for secure access to Docker Hub.

3. **Job - Docker & DockerHub Repository**: This job is configured to build and push Docker images with the following steps:
   - **Checkout**: Checks out the repository to get the latest code.
   - **Set up Docker Buildx**: Configures Docker Buildx, a tool that simplifies building and pushing multi-platform images.
   - **Cache Docker Layers**: Caches Docker layers to improve build performance.
   - **Login to Docker Hub**: Authenticates to Docker Hub using GitHub secrets for security.
   - **Build and Push Docker Image**: Builds the Docker image from the application code and pushes it to Docker Hub with the tag `givencingco/python:latest`.

## Prerequisites

- **Docker Hub Account**: Ensure that you have a Docker Hub account and have created a repository (e.g., `givencingco/python`).
- **GitHub Secrets**: Add your Docker Hub credentials (`DOCKER_USERNAME` and `DOCKERHUB_TOKEN`) to GitHub as repository secrets for secure access.

## Usage

1. Clone the repository.
2. Modify the application code as needed.
3. Push changes to the `main` branch.
4. The GitHub Actions workflow will automatically build and push an updated Docker image to Docker Hub.

## Additional Information

- **Tags**: The Docker image is tagged as `givencingco/python:latest`. You can adjust this tag in the workflow file to use a specific versioning scheme if needed.
- **Build Caching**: This configuration uses caching to reduce build times.
