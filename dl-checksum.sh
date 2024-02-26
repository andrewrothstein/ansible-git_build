#!/usr/bin/env sh
set -e
DIR=~/Downloads

dl_ver() {
    local ver=$1
    local url=https://github.com/git/git/archive/v${ver}.tar.gz
    local lfile=$DIR/git-src-v${ver}.tar.gz

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')

}

dl_ver ${1:-2.44.0}
