```
      ██            ██     ████ ██  ██                
     ░██           ░██    ░██░ ░░  ░██                
     ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
  ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░ 
 ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████ 
░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████ 
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░  

  ▓▓▓▓▓▓▓▓▓▓
 ░▓ about  ▓ custom config files
 ░▓ author ▓ @jkusa
 ░▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░

 tmux           > terminal multiplexer config
 vim            > spf13-vim + personal config
 zsh            > oh-my-zsh + personal config
```

# install

 1. install [gnu stow](http://www.gnu.org/software/stow/)
 1. `cd $HOME`
 1. `git clone https://github.com/jkusa/dotfiles.git`
 1. `mv dotfiles .dotfiles`
 1. `cd .dotfiles`
 1. `stow <app>`

# dependencies
 - general
    - [homebrew](http://brew.sh) - the missing package manager for OS X
    - [gnu stow](http://www.gnu.org/software/stow/) - a symlink farm manager
    - [tig](https://github.com/jonas/tig) - a text-mode interface for git
    - [seoul256](https://github.com/junegunn/seoul256.vim/blob/master/terminal-app/seoul256.terminal) - a terminal.app scheme
    - [todo.txt-cli](https://github.com/ginatrapani/todo.txt-cli) - a simple and extensible shell script for managing your todo.txt file
 - zsh
    - [git](http://git-scm.com/) - distributed version control system (install via Homebrew; stock Mac version has issues)
    - [autojump](https://github.com/joelthelion/autojump) - a cd command that learns
    - set zsh as default shell: `chsh -s /bin/zsh`
 - neovim
    - [vim-plug](https://github.com/junegunn/vim-plug) - minimalist vim plugin manager
    - install python lib: `pip install neovim` 
    - `git config --global core.editor nvim`
    - [custom terminal font](fonts/Meslo%20LG%20M%20Regular%20for%20Powerline%20Nerd%20Font%20Plus%20Font%20Awesome%20Plus%20Octicons%20Plus%20Pomicons.otf) - powerline font with nerd-font patch
 - vim
    - [jshint](https://github.com/jshint/jshint) - a tool that helps to detect errors and potential problems in your JavaScript code
    - [ctags](http://ctags.sourceforge.net/) - generates an index (or tag) file of language objects found in source files that allows these items to be quickly and easily located by a text editor or other utility
 - tmux
    - [reattach-to-user-namespace](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard) - notes and workarounds for accessing the Mac OS X pasteboard in tmux sessions

# langs
 - node.js
      - [nvm](https://github.com/creationix/nvm) - Node Version Manager 
 - swift
      - [swiftenv](https://github.com/kylef/swiftenv) - Swift Version Manager (`brew install swiftenv`)
 - ruby
      - [rbenv](https://github.com/rbenv/rbenv) - Groom your app’s Ruby environment (`brew install rbenv`)
 - java
      - [jvm](http://www.oracle.com/technetwork/java/javase/downloads/index.html) - a general-purpose computer programming language
      - [intellij](https://www.jetbrains.com/idea/) - the most intelligent java ide (with vim plugin)

 
