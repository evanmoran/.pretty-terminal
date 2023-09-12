# Pretty Terminal
Starter terminal configurations for z shell (zsh) and terminal colors (dircolors) for new users.

## Installation 

Install Oh My ZSH: 

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
     
Install Homebrew package manager: 

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Install Homebrew essential packages: 

    brew install coreutils git go node ack ripgrep tree emacs vim pico

1. `git` is needed to download, edit and commit source code remotely
2. `go` and `node` are programming languages that lots of people use
3. `emacs`, `vim`, and `pico` edit text files (these will help others help you if you run into trouble)
4. `tree` shows all files in a directory with children (good for looking around in terminal)
5. `ack` and `ripgrep` help you search through files similar to the `grep` command, but faster

Install Homebrew essential applications:

    brew install --cask sublime-text

`sublime-text` is a solid graphical text editor

Clone This Directory and Setup Pretty Terminal

    git clone https://github.com/evanmoran/.pretty-terminal/ ~ && ~/.pretty-terminal/link_files

## Included Files

    .zshrc: Config for z shell (zsh). Add aliases and paths to this file!

    .dircolors: Config for director colors. You never need to touch this most likely.

    .gitconfig: Config for git. Add git aliases to this file.


