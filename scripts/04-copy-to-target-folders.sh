#!/bin/bash

## check if PKGBUILD exists
if [ ! -f PKGBUILD ]; then
    echo "PKGBUILD not found"
    exit 1
fi

## check if .SRCINFO exists
if [ ! -f .SRCINFO ]; then
    echo ".SRCINFO not found"
    exit 1
fi

LOCALTARGET=../mobsh-bin/
cp PKGBUILD $LOCALTARGET

echo "Ready to git commit & push from $LOCALTARGET..."

AUR_GIT_FOLDER=$HOME/aur-packages/mobsh-bin/
cp PKGBUILD "$AUR_GIT_FOLDER"
cp .SRCINFO "$AUR_GIT_FOLDER"

echo "Ready to git commit & push from $AUR_GIT_FOLDER..."
