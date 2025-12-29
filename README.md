# Python Dockerized Microservice

## Overview
A lightweight Python application packaged in a Docker container. This README explains how to build and run the image locally and summarizes the technologies used.

## Technologies
- Python — application logic
- Docker — containerization and environment isolation
- Git — source control

## Requirements
- Docker installed on the host machine

## Run locally
1. Build the image:

```bash
docker build -t my-python-app .
```

2. Run the container (example with port mapping):

```bash
docker run --rm -p 8000:8000 my-python-app
```

If the app does not expose ports, run it with:

```bash
docker run --rm my-python-app
```

## Skills demonstrated
- Command-line usage and terminal workflows
- Basic containerization and local deployment
- Introductory Infrastructure as Code (IaC) practices and troubleshooting

## Notes
This README is intentionally minimal. For CI/CD, production deployment, or orchestration, add pipelines, automated tests, and appropriate security measures.
