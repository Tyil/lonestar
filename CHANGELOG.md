# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic
Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- The documentation has been updated to no longer refer to `${SHELL}rc` as the
  shell's configuration file, as this seems to not work on most shells.
  Instead, this has been changed to `ps -p $$|tail -n1|awk '{print $NF}'`,
  which is much more cross-compatible amongst shells.
  - [`GitHub#2`](https://github.com/Tyil/lonestar/issues/2).

## [1.0.2] - 2019-07-09

### Changed

- The URL to check for the latest version has been changed from
  `https://rakudo.org/latest/star/source` to
  `https://rakudostar.com/latest/star/source`. This should make automatic
  lookup of the latest available version work again.

### Removed

- The `upgrade` action has been removed from the documentation. It was planned
  to allow upgrading to a newer Rakudo Star version, but the `install` action
  already installs the latest available version, and thus can be used for this
  purpose instead.

## [1.0.1] - 2018-05-14

### Changed

- The `Makefile` has been updated to allow slightly more customization:
  - The addition of `ETCDIR` allows to specify a custom location for
     configuration files. This defaults to `/etc`.

- Configuration file loading has been updated to look for a number of
  configuration files, and load them in the following order:
  - `$APP_ROOTDIR/etc/lonestar/app.sh`
  - `$APP_ROOTDIR/etc/lonestar/user.sh`
  - `/usr/local/etc/lonestar/app.sh`
  - `/usr/local/etc/lonestar/custom.sh`
  - `/usr/local/etc/lonestar/user.sh`
  - `/etc/lonestar/app.sh`
  - `/etc/lonestar/custom.sh`
  - `/etc/lonestar/user.sh`
  Additionally, a local user can specify its own configuration in
  `$XDG_CONFIG_HOME/lonestar/config.sh`. If this environment variable is not
  set, it will default to `$HOME/.config`.

- `fetch_src` has gotten a couple of fixes
  - The check for when curl was failing was... failing. It has been made
    slightly more verbose to solve this.
  - In the event `curl` was failing, the error would be written to the file
    `2`, instead of `STDERR`. This was the result of a typo, and has also been
    corrected.

## [1.0.0] - 2018-04-15

- Initial release.
