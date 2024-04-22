#!/bin/bash

#  Optimiza la UX en la consola de comandos. Shell sh/Bash
#    14.4.2024, 23h31
#
#  Se refactoriza el código de:
#       https://github.com/WojGeek/set-bash-env.git


# En Produccion o Desarrollo
IS_DEVELOPING=1

# ubicación de la aplicación clonada
CLONED_GIT_REPOSITORY="$HOME/optimize-ux-console"       ##  DO NOT CHANGE

source $CLONED_GIT_REPOSITORY/env.sh

# verify cloned URL before installing at /opt
source $components/opt.sh
check_first_install

source $components/views.sh
source $components/functions.sh
source $components/alias.sh
source $components/commands.sh

show_info
#enable_ux
enable_alias_pkg_mgmt


# prompt 
# TODO: source $components/prompt.sh

# TODO enable_powerline_prompt
# TODO check_NodeJS

#vim
source $components/vim.sh