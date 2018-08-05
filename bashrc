# =
# General

# use vi keybindings in bash
set -o vi

# set the default system editor
export VISUAL=nvim
export EDITOR=nvim

# =
# Appearance

# ls
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='Dxgxfxfxbxdxdxhbadbxbx'

# prompt
export PS1="\[\033[01;38;5;37m\]\w > \[\033[0m\]"

# =
# Bash Aliases

# ls
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -oF'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# misc
alias ..='cd ..'
alias tmux='tmux -2' # force tmux to assume 256color terminal

