#!/usr/bin/env bash


env=$1
command=$2

echo "Using build/build.cfg" >&2
source build/build.cfg

if [ $env = "dev" ]
 then
    echo "Dev Mode selected .."
    echo "Using $dev_conf file in 'conf' directory .."
    activator $command -Dconfig.resource=$dev_conf
elif [ $env = "prod" ]
 then
    echo "In Prod"
elif [ $env = "-h" ]
 then
    echo "This is a wrapper for activator"
    echo "<build.sh> <env> <activator_command>"
    echo "env \"dev\" and \"prod\""
    echo "activator command list"
    activator -h
else
    echo "Invalid command. Run -h"
    activator -h
fi