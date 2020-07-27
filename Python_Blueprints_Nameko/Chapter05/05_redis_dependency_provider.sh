# Log into redis container
docker exec -it redis /bin/bash
redis-cli
#set msg1 "this is a test"

# Return to user account
exit

# Start namenko service
nameko run temp_messenger.service --config config.yaml &
nameko shell