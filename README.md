# Arch packages for AUR

## Arch resources

- [https://wiki.archlinux.org/index.php/Creating_packages](https://wiki.archlinux.org/index.php/Creating_packages)
- [https://wiki.archlinux.org/index.php/PKGBUILD](https://wiki.archlinux.org/index.php/PKGBUILD)
- [https://wiki.archlinux.org/index.php/AUR_submission_guidelines](https://wiki.archlinux.org/index.php/AUR_submission_guidelines)
- [https://wiki.archlinux.org/index.php/Arch_package_guidelines](https://wiki.archlinux.org/index.php/Arch_package_guidelines)
- [https://wiki.archlinux.org/index.php/Namcap](https://wiki.archlinux.org/index.php/Namcap)
- [https://wiki.archlinux.org/index.php/pacman](https://wiki.archlinux.org/index.php/pacman)

## Mob.sh

There is already a package named [mob](TODO) but it is something completely different. I'll use the
package name `mobsh` instead.

Mob.sh is a Go program to ease git handovers during remote mob programming.

Mob.sh upstream provides a binaries at
[https://github.com/remotemobprogramming/mob/releases](https://github.com/remotemobprogramming/mob/releases).

Per AUR convention I'll name the package `mobsh-bin`.

Dependencies: 

- Git
- TODO Does the binary still require Go?

