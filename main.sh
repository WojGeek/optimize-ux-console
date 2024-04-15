#!/bin/sh

#  Optimiza la UX en la consola de comandos. Shell sh/Bash
#    14.4.2024, 23h31
#
#  Se refactoriza el código de:
#       https://github.com/WojGeek/set-bash-env.git


# En Produccion o Desarrollo
IS_DEVELOPING=1

MAIN_DIR=$PWD/scripts

source $MAIN_DIR/vars.sh
source $MAIN_DIR/views.sh
source $MAIN_DIR/functions.sh
source $MAIN_DIR/alias.sh

show_info
enable_ux
enable_alias_pkg_mgmt
#ChooseDistro
enable_powerline_prompt
check_NodeJS