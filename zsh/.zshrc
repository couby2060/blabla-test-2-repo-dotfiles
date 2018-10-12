# if [ "$TMUX" = "" ]; then tmux; fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions colored-man colorize github jira brew osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# 
#

alias ls='ls -l -G'
alias ..='cd ..'
alias brewup="brew update && brew doctor && brew outdated && brew upgrade && brew cleanup && brew cleanup"
alias c='clear'
alias cd..='cd ..'
alias fms='printf "z7927WdTjt8UgFzp2X24" | pbcopy'
alias gadd='git add -A'
alias gcommit='git commit -m'
alias gridcard='open -a /Applications/Preview.app ~/Documents/Gridcard_cov.png'
alias gstatus='git status'
alias inx='printf "rbservice0221" | pbcopy'
alias links='open -a /Applications/Microsoft\ Excel.app ~/Dropbox/myfujifilm/AnalyticsTracking-052017.xlsx'
alias odoc='open -a /Applications/Microsoft\ Word.app/ '
alias opdf='open -a /Applications/Adobe\ Acrobat\ DC/Adobe\ Acrobat.app/ '
alias opsd='open -a /Applications/Adobe\ Photoshop\ CC\ 2017/Adobe\ Photoshop\ CC\ 2017 '
alias osub='open -a /Applications/Sublime\ Text.app '
alias otw='open -a /Applications/TextWrangler.app/ '
alias oxls='open -a /Applications/Microsoft\ Excel.app/ '
alias pullpush='git pull; git push'
alias shortcuts='cat ~/.dotfiles/zsh/.zshrc'
alias sub-settings='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User'
alias subsettings='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User'
alias word-link='rm -f ~/Library/Group\ Containers/UBF8T346G9.Office/User\ Content.localized/Startup.localized/Word/linkCreation.dotm'
alias gitkey='/usr/bin/ssh-add -K ~/.ssh/git-key'
alias ccat='pygmentize'

source "`brew --prefix`/etc/grc.bashrc"

# alias vim='/usr/local/vim'

alias tstamp='date "+%Y-%m-%d_%H-%M-%S"'

alias mktstamp='mkdir $(date +%Y-%m-%d_%H-%M-%S)'

addts (){
	d=$(date +%Y-%m-%d_)
	mv "$1" "$d$1"
}
cpts (){
	d=$(date +%Y-%m-%d_)
	cp "$1" "$d$2"
}
mvts (){
	d=$(date +%Y-%m-%d_)
	mv "$1" "$d$2"
}
mkts () {
  d=$(date +%Y-%m-%d_)
  mkdir "$d$1"
}
mkcd () {
  mkdir "$1"
  cd "$1"
}
gpullall () {
  CURRENTPATH=$(pwd)
  echo 'Pulling: ~/Repositories/DeutzAG'
  cd ~/Repositories/DeutzAG;git pull
  echo 'done\n'
  echo 'Pulling: ~/Repositories/covestro/newsletter_update'
  cd ~/Repositories/covestro/newsletter_update;git pull
  echo 'done\n'
  echo 'Pulling: ~/Repositories/mediamarkt/mediamarkt-newsletter'
  cd ~/Repositories/mediamarkt/mediamarkt-newsletter;git pull
  echo 'done\n'
  echo 'Pulling: ~/Repositories/mediamarkt/mediamarkt-relaunch'
  cd ~/Repositories/mediamarkt/mediamarkt-relaunch;git pull
  echo 'done\n'
  echo 'Pulling: ~/Repositories/myfujifilm/myfujifilm'
  cd ~/Repositories/myfujifilm/myfujifilm;git pull
  echo 'done\n'
  echo 'Pulling: ~/Repositories/myfujifilm/myfujifilm-newsletter'
  cd ~/Repositories/myfujifilm/myfujifilm-newsletter;git pull
  echo 'done\n'
  echo 'Pulling: ~/Repositories/twt-rb/default'
  cd ~/Repositories/twt-rb/default;git pull
  echo 'done\n'
  echo 'Pulling: ~/Repositories/twt-rb/newsletter'
  cd ~/Repositories/twt-rb/newsletter;git pull
  echo 'done\n'
  cd $CURRENTPATH
  echo '---------- COMPLETED ----------\n'
}

alias l='ls -lFh'
alias la='ls -lAFh'
alias lr='ls -tRFh'
alias lt='ls -ltFh'
alias ll='ls -l'
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'
alias zshrc='$EDITOR ~/.dotfiles/zsh/.zshrc'
alias h='history'
alias H='| head'
alias T='| tail'
alias -g G='| grep --color'
alias L='| less'
alias M='| most'
alias LL='2>&1 | less'
alias CA='2>&1 | cat -A'
alias NE='2> /dev/null'
alias NUL='> /dev/null 2>&1'
alias P='2>&1| pygmentize -l pytb'

alias covnl='cd ~/Repositories/covestro/newsletter_update;git pull;subl .;npm run build'
alias rbnl='cd ~/Repositories/twt-rb/newsletter;git pull;subl .;npm run build'

fpath=(/usr/local/share/zsh-completions $fpath)

### There from beginning
export PATH="/usr/local/bin:$PATH"
### Added by Homebrew
export PATH="/usr/local/sbin:$PATH"
