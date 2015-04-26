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
    - [gnu stow](http://www.gnu.org/software/stow/) - a symlink farm manager
 - zsh
    - [autojump](https://github.com/joelthelion/autojump) - a cd command that learns
 - vim
    - [jshint] (https://github.com/jshint/jshint) - a tool that helps to detect errors and potential problems in your JavaScript code
    - [ctags] (http://ctags.sourceforge.net/) - generates an index (or tag) file of language objects found in source files that allows these items to be quickly and easily located by a text editor or other utility
 - tmux
    - [reattach-to-user-namespace] (https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard) - notes and workarounds for accessing the Mac OS X pasteboard in tmux sessions
