# This is a comment in the DockerFile

## Specify base image
FROM ubuntu

## Specify maintainer of the image 
MAINTAINER sean

## Specify instructions i.e Install dependencies
RUN echo "hello"
RUN echo "world"

## Specify command to be executed at the end
CMD ["echo", "Image created"]
