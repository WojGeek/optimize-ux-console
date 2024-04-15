#!/bin/sh


set_variables() {
    # nombre del Git a clonar/clonado
    CLONEDREPOSITORY="optimize_UX_console"  ##  DO NOT CHANGE
    
    # target
    SYSTEMDIRECTORY="/opt"
    
    # script principal
    MAIN_="$SYSTEMDIRECTORY/$CLONEDREPOSITORY/main/0-index.sh"
}

set_variables
