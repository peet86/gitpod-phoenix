#!/bin/bash

#init db
psql --command "CREATE USER postgres WITH SUPERUSER PASSWORD 'postgres';" 

#get phx new
mix archive.install hex phx_new --force

# new hello 
mix phx.new hello --force
cd hello 
mix ecto.create --force