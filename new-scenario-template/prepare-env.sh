#/bin/bash

echo 'please wait while we prep the environment (should take about 10 seconds)'
docker pull dpage/pgadmin4
docker run -p 80:80 \
    -e 'PGADMIN_DEFAULT_EMAIL=admin' \
    -e 'PGADMIN_DEFAULT_PASSWORD=admin' \
    -d dpage/pgadmin4
