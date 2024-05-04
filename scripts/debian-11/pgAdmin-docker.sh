#!/bin/bash

# Set default email and password

PGADMIN_DEFAULT_EMAIL="user@example.com"
PGADMIN_DEFAULT_PASSWORD="root"

# If email or password still default, abort

if [ "$PGADMIN_DEFAULT_EMAIL" == "user@example.com" ] || [ "$PGADMIN_DEFAULT_PASSWORD" == "root" ]; then
  echo "Please set the default email and password for pgAdmin."
  exit 1
fi

docker run --network="host" \
 -e "PGADMIN_DEFAULT_EMAIL=$PGADMIN_DEFAULT_EMAIL" \
 -e "PGADMIN_DEFAULT_PASSWORD=$PGADMIN_DEFAULT_PASSWORD" \
 dpage/pgadmin4