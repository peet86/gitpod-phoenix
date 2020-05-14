#!/bin/bash

if [[ -z "${PHX_APP}" ]]; then
    read -p "Do you want to bootstrap a new phoneix app [Y/n]? " -n 1 -r
    echo   
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        read -p "Choose a name for your app:" app_name
        if [[ -z "${app_name}" ]]; then
            app_name="default"
        fi
        gp env PHX_APP=$app_name
        eval $(gp env -e) 

        # get phx new
        mix archive.install hex phx_new --force

        # create app
        echo yes | mix phx.new $app_name 
        cd $app_name
        mix ecto.create
        iex -S mix phx.server
    fi
else
    ex -S mix $PHX_APP/phx.server
fi