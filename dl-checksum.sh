#!/usr/bin/env sh
VER=2.23.0
DIR=~/Downloads
URL=https://github.com/git/git/archive/v${VER}.tar.gz
LFILE=$DIR/git-src-v$VER.tar.gz

if [ ! -e $LFILE ];
then
    wget -q -O $LFILE $URL
fi

printf "  # %s\n" $URL
printf "  '%s': sha256:%s\n" $VER $(sha256sum $LFILE | awk '{print $1}')
