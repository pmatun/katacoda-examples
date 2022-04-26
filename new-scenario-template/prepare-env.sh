#/bin/bash

echo 'please wait while we prep the environment (should take about 10 seconds)'
docker network create mybridge
docker run -d --network mybridge -p 5050:5050 -e PGADMIN_SETUP_EMAIL=admin -e PGADMIN_SETUP_PASSWORD=password --name=pgadmin dpage/pgadmin4
