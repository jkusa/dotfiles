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

# Key maps
bindkey '^R' history-incremental-search-backward 
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M viins '^a'    beginning-of-line
bindkey -M viins '^e'    end-of-line

#Exports
export PATH=~/.local/bin:$PATH
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"
export EDITOR=`which nvim`
export TERM=xterm-256color

#Aliases
alias tmux='TERM=screen-256color-bce tmux -2'
alias ta='[[ -z "$TMUX" ]] && exec tmux -2 attach'
alias tg='tig --all'
alias vim='nvim'
alias ack='ack --pager="less -FRSX"'

#Allow more files to be open
ulimit -S -n 4080

#Brew Config
eval "$(/opt/homebrew/bin/brew shellenv)"

#Node Config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
#source "$HOME/code/emsdk/emsdk_env.sh"

#Java Config
[ -f /usr/libexec/java_home ] && export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export ANDROID_HOME=/usr/local/opt/android-sdk

#Ruby Config
[ -f /usr/local/bin/rbenv ] && eval "$(rbenv init -)"

#Swift Config
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"
[ -f /usr/local/bin/swiftenv ] && eval "$(swiftenv init -)"

#Python Config
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#Rust Config
[ -f $HOME/.cargo/env ] && source $HOME/.cargo/env
