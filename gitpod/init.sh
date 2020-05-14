#!/bin/bash

#init db
psql --command "CREATE USER postgres WITH SUPERUSER PASSWORD 'postgres';" 

#reset app 
gp env PHX_APP=""
eval $(gp env -e) 
