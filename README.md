# Pretty Terminal
Starter shell configs, dircolors, and other settings for new users
Included:

## Installation 

Install Oh My ZSH: 

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
     
Install Homebrew package manager: 

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Install Homebrew essential packages: 

    brew install coreutils git zsh-autosuggestions go node ack ripgrep tree emacs vim pico

`git` is needed to download, edit and commit source code remotely 
`zsh-autosuggestions` makes z shell suggestions better
`go` and `node` are programming languages that lots of people use
`emacs`, `vim`, and `pico` edit text files (these will help others help you if you run into trouble)
`tree` shows all files in a directory with children (good for looking around in terminal)
`ack` and `ripgrep` help you search through files similar to the `grep` command, but faster

Clone This Directory

    cd ~
    git clone https://github.com/evanmoran/pretty-terminal
    cp pretty-terminal/.* . 

## Included Files

    .zshrc: Config for z shell
    .dircolors: Config for director colors


