#!/bin/bash

#init db
psql --command "CREATE USER postgres WITH SUPERUSER PASSWORD 'postgres';" 

#get phx new
mix archive.install hex phx_new --force

# new hello 
echo yes | mix phx.new hello
cd hello 
echo yes | mix ecto.create 