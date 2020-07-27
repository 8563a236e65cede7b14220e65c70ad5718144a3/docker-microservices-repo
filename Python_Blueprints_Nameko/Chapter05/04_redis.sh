# Start a redis container
docker run -d -p 6379:6379 --name redis redis

# Verify its running
docker ps

# Generate new base.in file with redis
echo redis >> requirements/base.in
pip-compile requirements/base.in
pip-compile requirements/test.in

# Access redis-cli from container
docker exec -it redis /bin/bash
redis-cli