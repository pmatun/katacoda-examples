#/bin/bash

echo 'please wait while we prep the environment (should take about 10 seconds)'

launch.sh

if [[ ! -d "$PGADMIN_SETUP_EMAIL" ]]; then 
    export PGADMIN_SETUP_EMAIL="admin@domain.com"
    export PGADMIN_SETUP_PASSWORD="password"
    echo 'export PGADMIN_SETUP_EMAIL="${pg_admin_email}"' >> ~/.bashrc
    echo 'export PGADMIN_SETUP_PASSWORD="${pg_admin_pwd}"' >> ~/.bashrc
fi

sudo apt update
sudo apt install ca-certificates
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4
sudo /usr/pgadmin4/bin/setup-web.sh --yes
