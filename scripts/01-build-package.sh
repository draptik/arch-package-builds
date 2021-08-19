#!/bin/bash

if [ -z "$1" ]
  then
    echo "No argument supplied. Please provide a version number (f.ex. 1.9.0)."
    exit 1
fi

## cleanup
rm mob_*
rm PKGBUILD
rm .SRCINFO

VERSION="$1"

BASEURL="https://github.com/remotemobprogramming/mob/releases/download/v${VERSION}/"
BINARYFILE="mob_v${VERSION}_linux_amd64.tar.gz"
CHECKSUMFILE="mob_v${VERSION}_linux_amd64_checksum.txt"

## get current binary
curl "${BASEURL}${BINARYFILE}" --location --output "${BINARYFILE}"

## get checksum
curl "${BASEURL}${CHECKSUMFILE}" --location --output "${CHECKSUMFILE}"
CHECKSUM=$(awk '$0' "${CHECKSUMFILE}")

## create PKGBUILD
cat <<EOF > PKGBUILD
# Maintainer: Patrick Drechsler <socialcoding at pdrechsler dot de>

pkgname=mobsh-bin
pkgver=${VERSION}
pkgrel=1
pkgdesc="Fast git handover with mob"
arch=('x86_64')
url="https://github.com/remotemobprogramming/mob"
license=('MIT')
depends=("git")
optdepends=('espeak-ng-espeak: Multi-lingual software speech synthesizer'
            'mbrola-voices-us1: An American English female voice for the MBROLA synthesizer')
provides=('mobsh')
conflicts=('mobsh' 'mob')

source_x86_64=("\$url/releases/download/v\${pkgver}/mob_v\${pkgver}_linux_amd64.tar.gz")
md5sums_x86_64=("${CHECKSUM}")

package() {
    install -D -m644 "LICENSE" "\$pkgdir/usr/share/licenses/\$pkgname/LICENSE"
    install -D -m755 "mob" "\$pkgdir/usr/bin/mob"
}
EOF

exit 0
