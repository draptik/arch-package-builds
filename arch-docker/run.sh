#!/bin/sh
docker run --rm -it \
    -v "$(pwd)"/share:/share \
    draptik/arch-with-aur:1.0.0 \
    /bin/bash
