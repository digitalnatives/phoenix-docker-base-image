# Phoenix docker base image

Usage

```Dockerfile
FROM digitalnatives/phoenix

# your own commands
```

Deploying a new version

```bash
export DOCKER_IMAGE_NAME=digitalnatives/phoenix:latest
docker build -t $DOCKER_IMAGE_NAME .
docker push $DOCKER_IMAGE_NAME
```
