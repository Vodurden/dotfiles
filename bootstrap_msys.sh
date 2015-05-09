#!/bin/bash
DOTFILE_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Grab our software
pacman -S \
       mingw64/mingw-w64-x86_64-emacs \
       mingw64/mingw-w64-x86_64-tcl \
       mingw64/mingw-w64-x86_64-tk

# Link things to their appropriate directories
# ln seems to do acopy so we need to use Windows mklink.
cmd //c "mklink `cygpath -w ~/.emacs.d/.spacemacs` `cygpath -w ~/.dotfiles/.spacemacs`"
cmd //c "mklink /D `cygpath -w ~/.emacs.d/private/windows` `cygpath -w ~/.dotfiles/.emacs.d/private/windows`"
