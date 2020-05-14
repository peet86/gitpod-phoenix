#!/bin/bash

#init db
psql --command "CREATE USER postgres WITH SUPERUSER PASSWORD 'postgres';" 
mix deps.get
mix ecto.create

#new phx
mix archive.install hex phx_new