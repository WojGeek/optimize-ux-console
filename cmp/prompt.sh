#!/bin/bash

#
#  Activa el prompt basado en 'powerline'
#


set_prompt_and_environment() {
    # Powerline prompt
    detect_os
    
    active="false"
    
    case $os_result in
        "rpm")
            # echo -e "$msg $RPM_TYPE"
            source /usr/share/powerline/bash/powerline.sh
            active="true"
        ;;
        "deb")
            # echo -e "$msg $DEB_TYPE"
            
            if [ -f  /usr/share/powerline/bindings/bash/powerline.sh ]; then
                source /usr/share/powerline/bindings/bash/powerline.sh
                active="true"
            else
                active="false"
            fi
        ;;
        *)
            echo -e "\nOperating system unknown or Maybe Detecting Fails"
        ;;
    esac
    
    if [  $active == "false" ]; then
        echo -e " Inicio de Powerline prompt falló "
    fi
    
}


enable_powerline_prompt() {
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    
    set_prompt_and_environment
    
}