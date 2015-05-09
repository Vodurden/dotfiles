# My Dotfiles

# Windows
## Install
* Install MSYS2: http://sourceforge.net/projects/msys2/
    - We assume installation to C:\msys64
* Install ConEmu: http://conemu.github.io/
* Configure ConEmu Startup>Tasks
    - Add New Task {Bask::Mingw64}
    - Parameters: /icon "C:\msys64\msys2.ico"
    - Command: %ConEmuDrive%\msys64\usr\bin\sh.exe -c 'MSYSTEM=MINGW64 exec /bin/sh --login -i'
* Execute:

    pacman -Sy
    pacman --needed -S bash pacman pacman-mirrors msys2-runtime
    ** RESTART MSYS2 **
    pacman -Su
    pacman -S git
    git clone <dotfilerepo> ~/.dotfiles
    ** RESTART MSYS2 AS ADMINISTRATOR
    ~/.dotfiles/bootstrap_msys.sh
    ** RESTART MSYS2 AS NORMAL USER **

## Important Commands
* runemacs - start a detached emacs terminal.
