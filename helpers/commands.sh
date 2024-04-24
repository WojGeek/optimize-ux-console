#!/bin/bash

#
#  packages installer
#


pkg_found=0

install_package () {
   
   installed=0
   local pkg=$@

     if [ -z "$1" ]
     then 
       echo " - install_package: no hay argumentos"
       return
    fi

    detect_os
    if [ "$OS_DERIVATES" == 'deb' ]
    then

        #echo -e "\t *** sudo apt install -y  $pkg "
        sudo apt install  $pkg 2>&1
        installed=1

    elif [ "$OS_DERIVATES" == 'rpm' ]
    then
        #echo "Instala con RPM"
        echo " - sudo dnf install -y $pkg "
        installed=1
    else
        echo " - Haga una instalación manual de $1"
        installed=0
    fi
 
}

# run_comm() {
#     #command_name=$1
#     command_name -v "$1" >/dev/null 2>&1
    
#     #type $command_name &> /dev/null;

#     if [ $? -eq 0 ]
#     then
#       echo "Type resulted: $?"
#     fi
# }

pkg_query() {
    # query is package already installed

    pkg=$1

     if [ -z "$1" ]
     then 
       echo " - pkg_query: no hay argumentos"
       return
    fi

    detect_os
    if [ "$OS_DERIVATES" == 'deb' ] ; then
        status="$(dpkg-query -W --showformat='${db:Status-Status}' "$pkg" 2>/dev/null)"
        echo -e " - Query the dpkg database "
        
            
    elif [ "$OS_DERIVATES" == 'rpm' ] ; then
            #TODO: 
        
        echo "Pendiente  para rpm pkgages"

    else

         echo " - Check platform and install package installer: $1"

    fi
   
    # Found or not ...
    if [ ! $? = 0 ] || [ ! "$status" = installed ]; then
       pkg_found=0
       echo -e "\tPackage: $pkg not found $?"
       
    else 
       pkg_found=1
       echo -e "\t Package: $pkg found $?"
    fi


}
