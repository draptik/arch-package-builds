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

### v1.8.0

Updates to `PKGBUILD`:

- bump version number (`pkgver`)
- update `md5sums_x86_64`


### v1.7.0

Updates to `PKGBUILD`:

- bump version number (`pkgver`)
- update `md5sums_x86_64`


### v1.6.0

Updates to `PKGBUILD`:

- bump version number (`pkgver`)
- update `md5sums_x86_64`


#### v1.5.0

Updates to `PKGBUILD`:

- bump version number (`pkgver`)
- update `md5sums_x86_64`

#### v1.4.0

Updates to `PKGBUILD`:

- bump version number (`pkgver`)
- update `md5sums_x86_64`
- improve description (`pkgdesc`)

#### v1.3.0

Updates to `PKGBUILD`:

- bump version number (`pkgver`)
- update `md5sums_x86_64`

#### v1.2.0

Updates to `PKGBUILD`:

- bump version number (`pkgver`)
- improve description (`pkgdesc`)
- update `md5sums_x86_64`

##### Test

Create package:

```sh
mkdir ~/tmp/foo && cd ~/tmp/foo
cp <new-PKGBUILD> .

# Create the package using `makepkg`
makepkg
```

Install system-wide:

```sh
yay -U *.zst
```

Uninstall:

```sh
yay -R mobsh
```

##### Publishing

- switch to AUR git repo
- copy new `PKGBUILD`
- create `.SRCINFO` file: `makepkg --printsrcinfo > .SRCINFO`
- git commit and push

#### Licensing (outdated as of v1.2.0)

The provided `mob.sh` `tar.gz` file only includes the binary, not the license. To also include the
license in the AUR package, I download it from the sources. Not sure if this is the idiomatic way of
doing this...

Turns out, it's not. Future builds will have the license included in the tarball:

https://github.com/remotemobprogramming/mob/pull/109

### mobsh

Same as `mobsh-bin` but built directly from sources.

Resources for packaging Arch Go packages: [https://wiki.archlinux.org/index.php/Go_package_guidelines](https://wiki.archlinux.org/index.php/Go_package_guidelines)

### v1.3.0

~~Skipped, because it enforces usage of outdated go version (1.15)~~

Skipped tests in package build.

### v1.2.0

Updates to `PKGBUILD`:

- bump version number (`pkgver`)
- improve description (`pkgdesc`)
- update `md5sums`:
    - download https://github.com/remotemobprogramming/mob/releases/download/v1.2.0/mob_v1.2.0_linux_amd64_checksum.txt
    - copy value from text file to field `md5sums

#### Test

Create package:

```sh
mkdir ~/tmp/foo && cd ~/tmp/foo
cp <new-PKGBUILD> .

# Create the package using `makepkg`
makepkg
```

Install system-wide:

```sh
yay -U *.zst
```

Uninstall:

```sh
yay -R mobsh
```

#### Publishing

- switch to AUR git repo
- copy new `PKGBUILD`
- create `.SRCINFO` file: `makepkg --printsrcinfo > .SRCINFO`
- git commit and push
