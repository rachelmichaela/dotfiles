# Changes

Document last updated October 26th, 2022 (1 Marcheshvan 5783)

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Calendar Versioning](https://calver.org/) in the
`YY.MM.MINOR` format.

## Unreleased

### Added
- Provide a small installer script.

## [22.10.3] - 2022/10/26

### Added
- `bash`: Now includes an alias for `bat` from `batcat` as a `cat` alternative

## [22.10.2] - 2022/10/17

### Added
- `emacs`: Added comments to configuration files
- `emacs`: Added better default Perl support

### Changed
- `emacs`: Default to hybrid relative line numbers
- `vim`: Default to hybrid relative line numbers

### Removed
- `emacs`: Removed font declaration and other unused configuration options

## [22.10.1] - 2022/10/13

### Added
- `vim`: Automatically install `vim-plug` with plugins

## [22.06.1] - 2022/06/07

### Added
- `bash`: Added basic files for `bash`
- `vim`: Added EditorConfig and smart tabs plugins
- `x11`: Added natural scrolling to X11

### Changed
- `emacs`: Extended `emacs` with package and init configurations
- `vim`: Extended `vim` with `vim-plug`

### Removed
- `Sublime Text`: Removed `Sublime Text` completely due to `emacs` transition
- `tcsh`: Removed `tcsh` following switch to `bash`

## [22.04.2] - 2022/04/08

### Added
- Added basic file for `greetd`, configured for Sway.

## [22.04.1] - 2022/04/05

### Added
- Started collecting my dotfiles for online publication. This initial collection
represents the "tip of the iceberg", and provides just enough for basic system
configuration.
- Added basic files for `emacs`, `Sublime Text`, `swaywm`, `tcsh`, `vim`,
`waybar`, and `wofi`.
