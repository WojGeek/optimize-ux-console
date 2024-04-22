#!/bin/bash

#  Optimiza la UX en la consola de comandos
#       Bash shell
#    14.4.2024, 23h31
#
#  Se refactoriza el código de:
#  https://github.com/WojGeek/set-bash-env.git


# En Produccion o Desarrollo
IS_DEVELOPING=1

declare_app_environment() {
    # default location after  cloning
    CLONEDAPP_DIR="$HOME/optimize-ux-console" 
    source $CLONEDAPP_DIR/app_env.sh
}

require_helpers(){
   source $CLONEDAPP_DIR/helpers.sh
}

announce_end_running() {
    echo "==> For changes to take effect, close and re-open your current shell <=="
}



# prompt 
# TODO: source $components/prompt.sh

# TODO enable_powerline_prompt
# TODO check_NodeJS

main() {
    declare_app_environment
    require_helpers
    show_info
    announce_end_running
}

main
