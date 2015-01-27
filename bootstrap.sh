#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install postgresql-server-dev-all
sudo apt-get install python-dev
sudo apt-get install -y python-pip
sudo pip install mapfish
sudo pip install psycopg2
sudo pip install mapfish.plugin.client
sudo pip install 'Tempita>=0.5.1'
sudo rm -f /etc/postgresql/9.3/main/pg_hba.conf
sudo rm -f /etc/postgresql/9.3/main/postgresql.conf
sudo cp /vagrant/pg_conf/postgresql.conf /etc/postgresql/9.3/main/postgresql.conf
sudo cp /vagrant/pg_conf/pg_hba.conf /etc/postgresql/9.3/main/pg_hba.conf
sudo chown postgres:postgres /etc/postgresql/9.3/main/postgresql.conf
sudo chown postgres:postgres /etc/postgresql/9.3/main/pg_hba.conf
sudo service postgresql restart
