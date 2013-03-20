#!/bin/bash
filename=$(basename $0)
USAGE="ERROR. Usage as follows: $filename ssh_server";
if [ "$1" == "" ]; then echo $USAGE; exit; fi;
if [ ! -f ~/.ssh/id_dsa.pub ]
then
    echo 'id_dsa.pub does not exist, creating'
    ssh-keygen -tdsa
fi
ssh $1 'cat >>.ssh/authorized_keys' <~/.ssh/id_dsa.pub
