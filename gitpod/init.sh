#!/bin/bash

#init db
psql --command "CREATE USER postgres WITH SUPERUSER PASSWORD 'postgres';" 

#get phx new
mix archive.install hex phx_new

# new hello 
mix phx.new hello
cd hello 
mix ecto.create