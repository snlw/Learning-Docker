### Frequently used commands 

- `docker pull <image>` 
    - Download an image from a registry, like Docker Hub.
- `docker build -t <image_name> <path>`
    - Build an image from a Dockerfile, where <path> is the directory containing the Dockerfile.
- `docker image ls` 
    - List all images available on your local machine.
- `docker run -d -p <host_port>:<container_port> --name <container_name> <image>`
    - Run a container from an image, mapping host ports to container ports.
- `docker container ls` 
    - List all running containers.
- `docker container stop <container>` 
    - Stop a running container.
- `docker container rm <container>`
    - Remove a stopped container.
- `docker image rm <image>`
    - Remove an image from your local machine.
