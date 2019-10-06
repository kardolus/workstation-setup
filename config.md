# workstation-setup

## Productivity tools
* iTerm
* shiftit
* flux.d
* Flycut
* Homebrew
* Docker
* Evernote
* XCode

## Languages
* Go
* Node
* Java
* Ruby

## Bash
Install Bash-it and bash_it theme "bobby". Install ag, fzf and z (https://github.com/rupa/z/)

.bashrc
```
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source ~/workspace/z/z.sh
ssh-add -K ~/.github_key
alias gpr="git pull -r"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
```
.bash_profile
```
export PATH="/usr/local/bin:$PATH"

# Path to the bash it configuration
export BASH_IT="/Users/guillermo/.bash_it"

# Lock and Load a custom theme file
export BASH_IT_THEME="bobby"

# Load Bash It
source $BASH_IT/bash_it.sh

# # Buildpacks bash configuration
# export BASH_BP="$HOME/.bash_bp"
# source $BASH_BP/bash_bp.sh

source ~/.bashrc

export PATH="$HOME/.cargo/bin:$PATH"
```
### Aliases
```
alias -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias _='sudo'
alias babsh='bash-it'
alias bash_it='bash-it'
alias bash_ti='bash-it'
alias bashit='bash-it'
alias batbsh='bash-it'
alias batshit='bash-it'
alias bshena='bash-it enable alias'
alias bshenc='bash-it enable completion'
alias bshenp='bash-it enable plugin'
alias bshha='bash-it help aliases'
alias bshhc='bash-it help completions'
alias bshhp='bash-it help plugins'
alias bshsa='bash-it show aliases'
alias bshsc='bash-it show completions'
alias bshsch='bash-it search'
alias bshsp='bash-it show plugins'
alias c='clear'
alias cd..='cd ..'
alias cls='clear'
alias edit=''
alias gpr='git pull -r'
alias grep='grep --color=auto'
alias h='history'
alias ipy='ipython'
alias irc='irc'
alias k='clear'
alias l='ls -a'
alias l1='ls -1'
alias la='ls -AF'
alias ll='ls -al'
alias ls='ls -G'
alias md='mkdir -p'
alias pager=''
alias piano='pianobar'
alias py='python'
alias q='exit'
alias rb='ruby'
alias rd='rmdir'
alias reload_aliases='source ${BASH_IT}/scripts/reloader.bash alias aliases'
alias reload_completion='source ${BASH_IT}/scripts/reloader.bash completion completion'
alias reload_plugins='source ${BASH_IT}/scripts/reloader.bash plugin plugins'
alias shit='bash-it'
alias shuf='gshuf'
alias sl='ls'
alias svim='sudo vim'
alias vbpf='vim ~/.bash_profile'
alias vbrc='vim ~/.bashrc'
alias xt='extract'
alias z='_z 2>&1'
```

## Git
List of aliases 
```
alias.l log --decorate=short --graph -w --find-renames=50%
alias.lw log --decorate=short --graph --color-words -w --find-renames=50%
alias.ls log --graph --decorate=short --pretty="format:[%Cred%h%Creset]%d %ar by %Cblue%an%Creset. %Cgreen%s%Creset" -
alias.d diff --stat -p -w --find-renames=50%
alias.dw diff --stat -p --color-words -w --find-renames=50%
alias.dmb !base() { git diff --stat -p $* $(git merge-base HEAD origin/master); }; base
alias.prb pull --rebase --autostash
alias.r rebase --autosquash
alias.s stash save
alias.sp stash pop
alias.co checkout
alias.p push --tags
alias.su submodule update --init --recursive
alias.st status
alias.di diff
alias.ci commit --verbose
alias.br branch
alias.sta stash
alias.llog log --date=local
alias.flog log --pretty=fuller --decorate
alias.lg log --graph --pretty=format:'%Cred%h %Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'
alias.lol log --graph --decorate --oneline
alias.lola log --graph --decorate --oneline --all
alias.blog log origin/master... --left-right
alias.ds diff --staged
alias.fixup commit --fixup
alias.squash commit --squash
alias.unstage reset HEAD
alias.rum rebase master@{u}
alias.subu submodule update --init --recursive
alias.fetch-pr !f() { git fetch origin refs/pull/$1/head:pr/$1; } ; f
alias.alias ! git config --get-regexp ^alias\. | sed -e s/^alias\.// -e s/\ /\ =\ /
```

## VIM Plugins
Install NeoVim and Plug. And then these plugins
```
- fzf: OK
- vim-ps1: OK
- yajs.vim: OK
- vipe: OK
- vim-togglecursor: OK
- javascript-libraries-syntax.vim: OK
- vim-hug-neovim-rpc: OK
- vim-livedown: OK
- vim-fish: OK
- base16-vim: OK
- vim-classpath: OK
- vim-vimlint: OK (not loaded)
- vim-textobj-erb: OK
- vim-projectionist: OK
- vim-swap: OK
- targets.vim: OK
- vim-autoformat: OK
- ctrlp.vim: OK
- tagbar: OK
- vim-rhubarb: OK
- undotree: OK
- vim-signify: OK
- rspec.vim: OK
- tern_for_vim: OK
- tmux.vim: OK
- vim-markdown: OK
- elm-vim: OK (not loaded)
- scss-syntax.vim: OK
- vim-eunuch: OK
- i3-vim-syntax: OK
- vim-vinegar: OK
- vim-textobj-function: OK
- vim-qml: OK
- vim-repeat: OK
- vim-sexp: OK (not loaded)
- goyo.vim: OK
- limelight.vim: OK
- vim-endwise: OK
- oceanic-next: OK
- matchit.zip: OK
- vim-sleuth: OK
- ack.vim: OK
- vim-airline-themes: OK
- vim-go: OK
- vim-togglelist: OK
- vim-sensible: OK
- gruvbox: OK
- vim-terraform: OK
- vim-unimpaired: OK
- vim-airline: OK
- vim-ruby-refactoring: OK (not loaded)
- vim-simple-complete: OK
- vim-emacs-bindings: OK
- vim-rake: OK (not loaded)
- vimproc.vim: OK
- vim-textobj-user: OK
- vim-textobj-pastedtext: OK
- vim-textobj-fold: OK
- vim-rails: OK (not loaded)
- chromatica.nvim: OK
- vim-sexp-mappings-for-regular-people: OK (not loaded)
- nerdtree: OK
- vim-fireplace: OK (not loaded)
- FastFold: OK
- vim-fugitive: OK
- vim-textobj-rubyblock: OK
- vim-stay: OK
- vim-fetch: OK
- tabular: OK
- vim-better-whitespace: OK
- vim-cdo: OK
- vim-vimlparser: OK
- rust.vim: OK (not loaded)
- vim-textobj-underscore: OK
- echodoc.vim: OK
- ale: OK
- ayu-vim: OK
- html5.vim: OK
- systemd-vim-syntax: OK
- vim-stylus: OK
- fzf.vim: OK
- vim-hybrid: OK
- nginx.vim: OK
- vim-bundler: OK (not loaded)
- MatchTag: OK
- vim-salve: OK (not loaded)
- vim-protobuf: OK
- vim-abolish: OK
- tcomment_vim: OK
- emmet-vim: OK
- vim-surround: OK
- typescript-vim: OK
- vim-multiple-cursors: OK
- vim-signature: OK
- vim-vue: OK
- vim-cucumber: OK
- es.next.syntax.vim: OK
- vim-css3-syntax: OK
```


