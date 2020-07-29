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
