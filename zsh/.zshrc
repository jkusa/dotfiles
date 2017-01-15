# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

#ZSH_THEME="robbyrussell"
#ZSH_THEME="af-magic"
#ZSH_THEME="sorin"
#ZSH_THEME="fishy"
#ZSH_THEME="syl20bnr"
ZSH_THEME="edvardm"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history-substring-search vi-mode history autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Key maps
bindkey '^R' history-incremental-search-backward 
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M viins '^a'    beginning-of-line
bindkey -M viins '^e'    end-of-line

#Exports
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/X11/bin:$HOME/dev/lib/play-2.2.0:$PATH
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"
export EDITOR=`which nvim`
export NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'
export TERM=xterm-256color

#Aliases
alias tmux='TERM=screen-256color-bce tmux -2'
alias ta='[[ -z "$TMUX" ]] && exec tmux -2 attach'
alias tg='tig --all'
alias vim='nvim'
alias ack='ack --pager="less -FRSX"'
alias t="$HOME/git/todo.txt-cli/todo.sh -a"

#Allow more files to be open
ulimit -S -n 4080

#Node Config
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

#Java Config
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Fix python crash with vim and YCM plugin
export DYLD_FORCE_FLAT_NAMESPACE=1

#ruby
[ -f /usr/local/bin/rbenv ] && eval "$(rbenv init -)"
