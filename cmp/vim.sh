#!/bin/bash

#
#  Todo lo que relaciona  instalar el editor Vi,
#   Habilitar funciones y componentes 
#           21.04.2024,  23h29


# verifica  e instala si es necesario
# #if ! vim -v  &> /dev/null
#     then
#         echo -e "Vim not installed"
#         #apki vim 
# else 
#    enable_vimrc
# fi

enable_vimrc() {

    if [ -f ~/.vimrc ]; then
        echo -e "Already .vimrc is enabled"
    else
        if [ -f $CLONED_GIT_REPOSITORY/rc/vimrc ]; then
            echo -e " - Found cloned .vimrc"
            #ln -s $CLONED_GIT_REPOSITORY/rc/vimrc ~/.vimrc
            echo -e " - A new '.vimrc' has been enabled"
        else
            echo -e " - Cloned '.vimrc' not found!"
        fi
    fi

}

command_exists "vim"
install_command "vim neovim"


