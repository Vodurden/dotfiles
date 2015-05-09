# My Dotfiles

# Windows
## Install
### MSYS2
URL: http://sourceforge.net/projects/msys2/

We assume you install to C:\msys64

### ConEmu
URL: http://conemu.github.io/

Configure Startup>Tasks

- Add New Task {Bask::Mingw64}
- Parameters: `/icon "C:\msys64\msys2.ico"`
- Command: `%ConEmuDrive%\msys64\usr\bin\sh.exe -c 'MSYSTEM=MINGW64 exec /bin/sh --login -i'`

### Bootstrap
In an elevated terminal:

     pacman -Sy
     pacman --needed -S bash pacman pacman-mirrors msys2-runtime
     pacman -Su
     pacman -S git
     git clone <dotfilerepo> ~/.dotfiles
     ~/.dotfiles/bootstrap_msys.sh
     ** RESTART MSYS2 AS NORMAL USER **

## Important Commands
* runemacs - start a detached emacs terminal.
