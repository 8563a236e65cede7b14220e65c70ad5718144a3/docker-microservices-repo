# Start RabbitMQ Container
# -d    specifies to run in daemon mode
# -p    specifies exposing ports 5617 and 15672 on the container to
#       our local machine
#--name sets the container name to rabbitmq
docker run -d -p 5672:5672 -p 15672:15672 --name rabbitmq rabbitmq

# Check that the process is running
docker ps
