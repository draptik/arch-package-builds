# Docker container for testing

`makepkg` can't be run as root. The following script creates a new user which can run `makepkg`:

https://github.com/greyltc/docker-archlinux-aur/blob/master/add-aur.sh

## Usage

The script `create-image.sh` creates a docker image named `draptik/arch-with-aur:TAG`. The image
contains a non-root user for testing `makepkg`. It also contains a valid `yay` installation. The
`go` installation (required for building `yay`) is removed. The default non-root user name is
`docker`.

An interactive docker container can be started with the script `run.sh`.

Use the folder `share` to include content in the docker container.

