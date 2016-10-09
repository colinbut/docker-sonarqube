# docker-sonarqube

A docker container image for SonarQube 

To use, just build the docker image

To build the image:

docker build --tag [your repo]/[image name] .
To run the container:

docker run -d [your repo]/[image name] tail -f /dev/null
running the command tail -f /dev/null at the end is to prevent the container from exiting and having running after initial run.
The container will exit after run if no background jobs is running from a command that's been executed

Can use image as a base for other applications that runs on Unix/Linux environments.

In your Dockerfile (first line)

FROM [your repo]/[image name]
ideally, you would have built your image and uploaded to a Docker Registry (either a private hosted docker registry or Docker Hub).


