# Pretty ZSH Theme
#
# Credit to Steve Losh: http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/#the-whole-thing

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
RPS1="${return_code}"

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo `basename $VIRTUAL_ENV`
}

autoload -U colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{red}'
zstyle ':vcs_info:*' unstagedstr '%F{red}'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn

function virtualenv_info {
 [ $VIRTUAL_ENV ] && echo '['`basename $VIRTUAL_ENV`']'
}

theme_precmd () {
    PROMPT_NAME='%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[cyan]%}%m FOOOO'
    PROMPT_DIR='%{$fg[green]%}${PWD/#$HOME/~}'

    # Format yellow for no changes, red for changes
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats ' %F{yellow}%c%u%b%F{reset}'
    } else {
        zstyle ':vcs_info:*' formats ' %F{red}*%b%F{reset}'  # P1
    }

    vcs_info
}

# PROMPT: user@computer directory <git>
PROMPT='%F{cyan}%n%f@%F{cyan}%m%F{cyan}$(virtualenv_info) %f%f%F{green}${PWD/#$HOME/~}%f${vcs_info_msg_0_}%(!. ♡. ♡) '

# Other awesome cursors: ♔ ♕

autoload -U add-zsh-hook
add-zsh-hook precmd  theme_precmd


