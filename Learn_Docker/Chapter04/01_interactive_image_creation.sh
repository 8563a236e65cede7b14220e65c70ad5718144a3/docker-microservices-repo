# Run a base container
docker container run -it \
  --name sample \
  alpine:3.10 /bin/sh

# Install iptools on image for ping utility
apk update && apk add iputils

# Execute ping
ping -c 3 127.0.0.1

# Quit container
exit

# Check list of containers
docker container ls -a | grep sample

# Check what changed in our container in relation to the base image
docker container diff sample

# Commit the container
docker container commit sample my-alpine

# Check if image has been stored
docker image ls

# Check how custom image was built
docker image history my-alpine