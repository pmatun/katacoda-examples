#/bin/bash

echo 'please wait while we prep the environment'

#launch.sh

export PGADMIN_SETUP_EMAIL="admin@domain.com"
export PGADMIN_SETUP_PASSWORD="password"
echo 'export PGADMIN_SETUP_EMAIL="admin@domain.com"' >> ~/.bashrc
echo 'export PGADMIN_SETUP_PASSWORD="password"' >> ~/.bashrc

sudo apt update
sudo apt-get install ca-certificates -y </dev/null

#
# Setup the repository
#

# Install the public key for the repository (if not done previously):
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add

# Create the repository configuration file:
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

#
# Install pgAdmin
#

# Install for both desktop and web modes:
# sudo apt install pgadmin4 --yes </dev/null

# Install for desktop mode only:
# sudo apt install pgadmin4-desktop

# Install for web mode only: 
sudo apt install pgadmin4-web --yes </dev/null

# Configure the webserver, if you installed pgadmin4-web:
/usr/pgadmin4/bin/setup-web.sh --yes
#PGADMIN_SETUP_PASSWORD="admin@domain.com" PGADMIN_SETUP_EMAIL="password" /usr/pgadmin4/bin/setup-web.sh --yes
#. /usr/pgadmin4/bin/setup-web.sh --yes



