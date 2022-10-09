# `dotfiles`
My personal collection of dotfiles for use on GNU/Linux, FreeBSD, and others.

Document last updated October 9th, 2022 (14 Tishrei 5783)

### Table of Contents
- [About `dotfiles`](#about-dotfiles)
- [What `dotfiles` are included](#what-dotfiles-are-included)
- [How to use `dotfiles`](#how-to-use-dotfiles)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgements](#acknowledgements)

### About `dotfiles`

`dotfiles` is a modest collection of dotfiles that I have put together to
augment my GNU/Linux, FreeBSD, and other environments.

As an individual who frequently reinstalls operating systems or has to use
new systems temporarily, having a collection of configuration files that I can
quickly source is invaluable in making each new environment familiar. This
familiarity encourages efficiency in workflows, as I must neither manually
configure the environment nor adapt to new paradigms for short periods of time.

This collection is inspired by the wealth of dotfile collections throughout
the Internet, and I encourage you to use any inspiration you find in my
collection as a prompt to create and share your own!

### What `dotfiles` are included?

Configuration files are provided for the following applications:
- GNU [Bash](https://www.gnu.org/software/bash/)
- GNU [Emacs](https://www.gnu.org/software/emacs/) with
[Doom](https://github.com/hlissner/doom-emacs/)
- [greetd](https://git.sr.ht/~kennylevinsen/greetd) for Sway
- [swaywm](https://swaywm.org/)
- [Vim](https://www.vim.org/) with 
[vim-plug](https://github.com/junegunn/vim-plug)
- [Wofi](https://hg.sr.ht/~scoopta/wofi/)

#### Notes

- The Vim configuration file can be used without `vim-plug`, but Vim will throw
errors on launch.

### How to use `dotfiles`

To install an individual dotfile on your system, the following steps are
recommended.

1. Download the individual dotfile from this repository;
2. Save the dotfile to the location recommended by your operating environment.

### Contributing

Contributions can be made in the form of pull requests, or via bug reports
and suggestions in the repository issues.

All contributors must assign the copyright of their contribution to the author
of the project. This is to avoid the myriad of issues caused by having 
multiple intellectual property holders in a single project.

### License

Copyright &copy; 2022 Rachel Michaela Bradley.

`dotfiles` is released in its entirety under the BSD 2-Clause License. The
full text of this license is available in the COPYING file.

### Acknowledgements

- Thank you to the creators and maintainers of all of the applications for which
I have included dotfiles. You make my work frictionless!
