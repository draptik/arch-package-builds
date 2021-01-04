# Arch packages for AUR

## Arch resources

- [https://wiki.archlinux.org/index.php/Creating_packages](https://wiki.archlinux.org/index.php/Creating_packages)
- [https://wiki.archlinux.org/index.php/PKGBUILD](https://wiki.archlinux.org/index.php/PKGBUILD)
- [https://wiki.archlinux.org/index.php/AUR_submission_guidelines](https://wiki.archlinux.org/index.php/AUR_submission_guidelines)
- [https://wiki.archlinux.org/index.php/Arch_package_guidelines](https://wiki.archlinux.org/index.php/Arch_package_guidelines)
- [https://wiki.archlinux.org/index.php/Namcap](https://wiki.archlinux.org/index.php/Namcap)
- [https://wiki.archlinux.org/index.php/pacman](https://wiki.archlinux.org/index.php/pacman)

## Mob.sh

[Mob.sh](https://github.com/remotemobprogramming/mob) is a Go program to ease git handovers during remote mob programming.

There is already an AUR package named [mob](https://aur.archlinux.org/packages/mob/) (and
[mob-bin](https://aur.archlinux.org/packages/mob-bin/)) but it is something completely different. I'll use the
package name `mobsh` instead.

### mobsh-bin

[Mob.sh](https://github.com/remotemobprogramming/mob) upstream provides binaries at
[https://github.com/remotemobprogramming/mob/releases](https://github.com/remotemobprogramming/mob/releases).

Per AUR convention I'll name the package `mobsh-bin`.

Dependencies:

- Git

#### Licensing

The provided `mob.sh` `tar.gz` file only includes the binary, not the license. To also include the
license in the AUR package, I download it from the sources. No sure if this is the idiomatic way of
doing this...

### mobsh

Same as `mobsh-bin` but built directly from sources.

Resources for packaging Arch Go packages: [https://wiki.archlinux.org/index.php/Go_package_guidelines](https://wiki.archlinux.org/index.php/Go_package_guidelines)
