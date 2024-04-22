#!/bin/bash

# Components
helpers=$CLONEDAPP_DIR/helpers

 # verify cloned URL before installing at /opt
    source $helpers/opt.sh
    check_first_install

    source $helpers/views.sh
    source $helpers/functions.sh
    source $helpers/alias.sh
    source $helpers/commands.sh

    enable_alias_pkg_mgmt
    #vim
    source $helpers/vim.sh