#!/bin/bash

rm mob_*
rm PKGBUILD
rm .SRCINFO

## uninstall mobsh
yay -R mobsh-bin
