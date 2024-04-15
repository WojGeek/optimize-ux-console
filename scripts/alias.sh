#!/bin/sh



enable_alias_apt() {
    
    # apt -  Debian/Ubuntu derivates
    alias show-apt-alias='echo -e "Alias for apt:
    • apki - install
    • apks - search
    • apkr - remove
    • apkq - info
    • apku - update "'
    alias apki='sudo aptitude install "$@"'
    alias apks='aptitude search "$@"'
    alias apkr='sudo aptitude remove'
    alias apkq='aptitude show "$@" '
    alias apku='sudo aptitude update'
}

enable_alias_dnf() {
    
    # dnf - RHEL Derivates, Fedora, AlmaLinux, Rocky Linux / RPM-based Linux distributions.
    alias show-dnf-alias='echo -e "Alias for dnf/yum:
    • dnfi - install
    • dnfs - search
    • dnfr - remove
    • dnfq - info
    • dnfu - update "'
    
    alias dnfi='sudo dnf install "$@"'
    alias dnfs='sudo dnf search "$@"'
    alias dnfr='sudo dnf remove "$@"'
    alias dnfu='sudo dnf update "$@"'
    alias dnfq='sudo dnf info "$@"'
    
}

enable_alias_pkg_mgmt() {
    # Run all once
    enable_alias_dnf
    enable_alias_apt
    echo -e " • Alias for Packages management Enabled: <show-dnf-alias>  <show-apt-alias> "
}