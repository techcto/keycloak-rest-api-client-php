#!/bin/sh

args=("$@")

#Tag Builds
tag(){
    VERSION="${args[1]}"
    MESSAGE="${args[2]:=".."}"
    git tag -a v${VERSION} -m ${MESSAGE}
    git push --tags
}

$*