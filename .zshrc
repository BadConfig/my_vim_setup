# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch
unsetopt notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wfr/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ -f /usr/bin/grc ]; then
export PROMPT='[%n|%m %1~]$ ' 
alias grep='grc --colour=auto grep'
alias ls='grc --colour=auto ls'
alias ping='grc --colour=auto ping'
alias gcc='grc --colour=auto gcc'
alias irclog="grc --colour=auto irclog"
alias netstat="grc --colour=auto netstat"
alias proftpd="grc --colour=auto proftpd"
alias traceroute="grc --colour=auto traceroute"
fi

alias c='clear'
alias ll='ls -l -h'
alias la='ls -a -h'
alias lla='ls -l -a -h'
alias e='exit'


if [[ $EUID == 0 ]]; then #if root user
        export PROMPT='[%F{red}%B%n%b%f|%m %1~]$ ' 
fi
if [[ -n "$SSH_CIENT" || -n "$SSH2_CLIENT" ]]; then #if connected by ssh
        export RPROMPT='[%F{red}%BSSH%b%f]' 
fi

function fmd(){ mkdir -p $1 && cd $1;}



