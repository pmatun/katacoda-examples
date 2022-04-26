#/bin/bash

echo 'please wait while we prep the environment (should take about 10 seconds)'
#docker network create mybridge
docker run -d -p 80:80 -e PGADMIN_SETUP_EMAIL=admin -e PGADMIN_SETUP_PASSWORD=password --name=pgadmin dpage/pgadmin4
