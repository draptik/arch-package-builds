FROM archlinux:latest
MAINTAINER Patrick Drechsler <patrick@pdrechsler.de>

# Copied from https://github.com/greyltc/docker-archlinux-aur/blob/master/Dockerfile

# setup aur access for a new user "docker"
ADD add-aur.sh /usr/sbin/add-aur
RUN add-aur docker

# now to install from the AUR, you can do this:
# su docker -c "yay -S --noprogressbar --needed --noconfirm $PACKAGENAME"

CMD ["/usr/bin/bash"]

