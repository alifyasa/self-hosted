#!/bin/bash

# Update system packages
sudo apt update
sudo apt upgrade -y

# Install PostgreSQL
sudo apt install -y postgresql postgresql-contrib

# Start the PostgreSQL service
sudo systemctl start postgresql

# Enable PostgreSQL to start on boot
sudo systemctl enable postgresql

echo "PostgreSQL installation and basic setup completed."
echo "to continue, please switch to the postgres user and create a new role and database."
echo "Run the following commands:

sudo su - postgres
createuser --interactive
createdb mydatabase

You can now connect to the PostgreSQL database using the psql command. For example, to connect to the database you created, run:

psql -d mydatabase -U myuser

"