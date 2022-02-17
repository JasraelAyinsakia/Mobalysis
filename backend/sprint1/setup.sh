#!/bin/sh
#Modify setup.sh script to add an operating system user mob_app_usr inside a directory
username="mob_app_usr"
if getent passwd "$username" > /dev/null 2>&1; then
    #echo "The username does '$username' exits"
else
    #echo "The user '$username' does not exit.
    useradd mob_app_usr -m -d /home/mob_app_usr
    #echo "User successfully created"
fi
