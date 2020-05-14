#!/bin/bash

psql --command "CREATE USER postgres WITH SUPERUSER PASSWORD 'postgres';" 
mix deps.get
mix ecto.create
