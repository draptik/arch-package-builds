#!/bin/bash

## check if PKGBUILD exists
if [ ! -f PKGBUILD ]; then
    echo "PKGBUILD not found"
    exit 1
fi

TESTDIR=../../test/

rm -rf ${TESTDIR}/*

cp PKGBUILD $TESTDIR
cd $TESTDIR || exit 2

## Create package
makepkg

## Install package
yay -U ./*.zst

## get version number of new package
mob --version

exit 0
