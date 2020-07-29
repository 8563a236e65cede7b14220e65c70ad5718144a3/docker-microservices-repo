# Check docker version number
docker version

# Run an alpine linux container to echo "Hello World"
docker container run alpine echo "Hello World"

# Run again to show that image is cached locally
docker container run alpine echo "Hello World"

# Run an centos container to ping localhost
docker container run centos ping -c 127.0.0.1

# Install jq for JSON processing and wget
apt install jq wget

# Try script
bash script.sh

# Build trivia image
dockerfile build .

# Run container as daemon
docker container run -d --name trivia 54f68c1ac196

# List containers
docker container ls -l

# Stop and remove image
docker rm -f trivia

# List running containers
docker container ls

# List all containers
docker container ls -a

# List container IDs
docker container ls -q

# Remove all currently active containers on the system
#docker rm -f $(docker container ls -q)

# List latest container
docker container ls -l

# Starting and stopping containers
docker container run -d --name trivia 54f68c1ac196
docker container stop trivia

# Get container id
echo $(docker container ls -a | grep trivia | awk '{print $1}')

# Removing containers
docker container rm -f trivia

# Confirm that it has been removed
docker container ls -a

# Run container as daemon
docker container run -d --name trivia 54f68c1ac196

# Inspect container
docker container inspect trivia

# Inspect specific information
docker container inspect -f "{{json .State}}" trivia | jq

# Exec into a running container
docker container exec -it trivia /bin/sh

# Check running processes inside container
ps

# Exit container
exit

# Execute process not in interactive shell
docker container exec trivia ps

# Run processes as daemon using -d and define environmental variables
# using -e
docker container exec -it \
  -e MY_VAR="Hello World" \
  trivia /bin/sh
echo $MY_VAR

# Attach to a running container
docker container attach trivia

# Try an Nginx web server
docker run -d --name nginx -p 8080:80 nginx:alpine

# Check if web server is working on exposed ports
curl -4 localhost:8080

# Attach nginx container
docker container attach nginx &

# Log some web server activity
for n in {1..10}; do curl -4 localhost:8080; done

# Clean up
docker container rm nginx

# Retrieving container logs
docker container logs trivia

# Restrict logging output
docker container logs --tail 5 trivia

# Follow logs
docker container logs --tail 5 --follow trivia

# Using a container-specific logging driver
docker container run --name test -it \
  --log-driver none \
  busybox sh -c "for N in 1 2 3; do echo 'Hello $N'; done"

# Clean up test container
docker container rm test

