#!/bin/bash

JAIL="${PWD}/jail"

function createJailDir(){
    makdir -p $JAIL
    mkdir -p $JAIL/{bin,lib64,lib}
}

function copyBashFiles(){
    cp -v /bin/bash $JAIL/bin
    list="$(ldd /bin/bash | egrep -o '/lib/.*\.[0-9]')"
    for l in $list; do cp -v $l "${JAIL}/lib"; done
    list="$(ldd /bin/bash | egrep -o 'lib64/.*\.[0-9]')"
    for l in $list; do cp -v $l "${JAIL}/lib64"; done
}

function copyLSFiles(){
    cp -v /bin/ls $JAIL/bin
    list="$(ldd /bin/ls | egrep -o '/lib/.*\.[0-9]')"
    for l in $list; do cp -v $l "${JAIL}/lib"; done
    list64="$(ldd /bin/ls | egrep -o '/lib64/.*\.[0-9]')"
    for l in $list64; do cp -v $i "${JAIL}/lib64"; done
}

if [ -d $JAIL ]; then
    rm -rf $JAIL
fi

createJailDir
copyBashFiles
copyLSFiles

# sudo chroot $JAIL /bin/bash to access JAIL