#!/bin/bash
# -----------------------------------------------------------------------------
# Author: Sam Whang
# File  : tp py
# Date  : 07/17/17
# -----------------------------------------------------------------------------
usage()
{
    echo "TP"
    echo "Description A simple cl tool to change directories"
    echo 	"-a [dir name]            Add directory to teleport list"
    echo	"-d [dir name]            Remove directory from list$"
    echo	"-g                       Get all directories from list and print name"
    echo	"-h                       Prints help/usage string"
    echo	"-m [dir name] [dir name] Move/Rename name in list to a different name"
    echo	"-r [dir name]            Remove directory name from list"
    echo	"-R Remove all            directories"
    echo	"-t [dir name]            Test directory name by printing full path of directory"
    echo	"-u                       Update teleport"
    echo	"-v                       Print current version of teleport"
}
version()
{
    echo "TP version: 0.0.1"
}
make()
{
    if [ ! -f ~/.teleport/directories.txt ]; then
        if [ ! -d ~/.teleport ]; then 
          mkdir ~/.teleport
        fi
        #echo > ~/.teleport/directories.txt
        touch ~/.teleport/directories.txt
    fi
}
push()
{
    make && echo -e "$1; $PWD" >> ~/.teleport/directories.txt && echo "Created TP Link"
    echo $1
}
pull()
{
    make
    echo "/$(2)"
    #set -i.bak '/"$(2)/d' ~/.teleport/directories.txt
}
pullAll()
{
    rm -f ~/.teleport/directories.txt || return 1
    touch ~/.teleport/directories || return 1
    echo "Cleared TP Locations"
}
# checks for empty args
echo $(uname)
echo $HOME
if [[ $# == "0" ]]; then
    usage
    exit 0
fi
# parses input args
while getopts "r:Ra:hvu" opt; do
    case $opt in
        \?)
            echo "Invalid option -$OPTARG" >&2 && exit -1
        ;;
        h)
            usage && exit 0
        ;;
        v)
            version && exit 0
        ;;
        a)
            echo "add name" && push "$2" && exit 1
        ;;
        r)
            echo "remove name" && exit 1
        ;;
        R)
            echo "Delete All" && exit 1
        ;;
        u)
            echo "undo deletion" && exit 1
        ;;
    esac
done
