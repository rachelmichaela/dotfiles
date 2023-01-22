# Changes

Document last updated November 27th, 2022 (3 Kislev 5783)

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Calendar Versioning](https://calver.org/) in the
`YY.MM.MINOR` format.

## Unreleased

### Added
- Provide a small installer script.

## [23.01.01] - 2023/01/21

### Changed
- `perlbrew`: Modified repository directory to support direct copying
- `vim`: Modified repository directory to support direct copying

## [22.11.01] - 2022/11/27

### Added
- `emacs`: Template Toolkit files now default to Markdown mode
- `emacs`: Use `dracula` theme
- `vim`: Use `dracula` theme

## [22.10.4] - 2022/10/27

### Added
- `perlbrew`: Provide default `bashrc` in case Perlbrew fails to install it

## [22.10.3] - 2022/10/26

### Added
- `bash`: Now includes an alias for `bat` from `batcat` as a `cat` alternative
- `emacs`: Include PDF packages to improve LaTeX preview support
- `emacs`: Default Perl-derived file types, such as `.psgi`, to Perl mode

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
