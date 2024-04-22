#!/bin/bash

#
#  packages installer
#

install_command () {
  
    detect_os

    if [ "$OS_DERIVATES" == 'deb' ]
    then
        #echo "Instala con apt"
        echo " - sudo apt install $1"
    elif [ "$OS_DERIVATES" == 'rpm' ] 
    then
        #echo "Instala con RPM"
        echo " - sudo dnf install $1"
    else 
        echo " - Haga una instalación manual de $1"

    fi

    command_exists $1
}

run_comm() {
    command=$1
    #$command -v "$1" >/dev/null 2>&1
    type $command &> /dev/null;

}

# verify command already installed
command_exists() {

    run_comm  "$1"

    if [ $? -eq 1 ]
    then 
        echo  " - Your system does not have $command"
    else
        echo " - $command exists!"
    fi

}     
#     command=$1
#     # requiere 1 argumento
#     #if [ $command -v "$1" >/dev/null 2>&1 ]
#     $command -v  > /dev/null 2>&1 
#     if [ $? -eq 1 ]
#     then 
#     #if command_exists  ; then
#         echo $command 'exists!'
#     else
#         echo  "Your system does not have $command"
#     fi
# }