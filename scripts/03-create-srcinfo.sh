#!/bin/bash

## check if PKGBUILD exists
if [ ! -f PKGBUILD ]; then
    echo "PKGBUILD not found"
    exit 1
fi

## create SRCINFO
makepkg --printsrcinfo > .SRCINFO
