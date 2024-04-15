#!/bin/sh

enable_ux() {
    echo -e " • UX Enabled "
    # if [ -d $SYSTEMDIRECTORY ]; then
    #     echo -e $SYSTEMDIRECTORY
    
    # fi
}

detect_os() {
    
    MACHINETYPE="$(uname -m)";
    ARCH="${MACHINETYPE}";
    
    DEB_TYPE='(Debian|Ubuntu|Mint|Parrot)'
    RPM_TYPE='(Fedora|OpenSuse|RedHat)'
    
    OSNAME=$(grep -E '^(NAME)=' /etc/os-release)
    OS_FOUND="OS Found:  $OSNAME, $ARCH"
    export OS_FOUND
    
    if [[ $OSNAME =~ $DEB_TYPE ]]; then
        os_result="deb"
    fi
    if [[ $OSNAME =~ $RPM_TYPE ]]; then
        os_result="rpm"
    fi
}

ChooseDistro() {
    detect_os
    echo -e " • $OS_FOUND"
    case $os_result in
        "rpm")
            
            if [ `rpm -q $1` ]; then
                echo -e "$OK Powerline installed"
            else
                echo -e "Powerline Prompt not installed for $OSNAME"
                # TODO: install_package powerline powerline-fonts
            fi
        ;;
        "deb")
            #    if [  `dpkg -s $1` ]; then
            if [ -f  `which powerline` ]; then
                echo -e "$OK Powerline installed"
            else
                echo -e "Powerline Prompt not installed for $OSNAME"
                #TODO: install_package powerline fonts-powerline
            fi
            
        ;;
        *)
            echo -e "\nNo se pude identificar el sistema operativo"
        ;;
    esac
}



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

# identificar OS
check_NodeJS() {
    
    found_nodejs="null"
    
    VERSIONSNODEJS='(v18|v16|v15|v14)'
    
    if ! node -v  &> /dev/null
    then
        echo -e "Node JS no se encontró instalado"
        found_nodejs="false"
        
        return 0
    else
        NODEVERSION="$(node -v)";
        NODEJS_VERSION_FOUND="NODE JS $NODEVERSION"
        echo -e " • Node JS — server-side JavaScript runtime $NODEVERSION "
    fi
    
    
    if [[ $NODEVERSION =~ $VERSIONSNODEJS ]]; then
        found_nodejs="true"
        # echo -e " Encontrado $NODEJS_VERSION_FOUND"
    fi
    
    # npm manager
    if ! npm -v  &> /dev/null
    then
        echo -e "npm  no se encontró instalado"
        found_nodejs="false"
        exit
    else
        NPMVERSION="$(npm -v)";
        echo -e " • npm - javascript package manager installed $NPMVERSION"
    fi
    
}
