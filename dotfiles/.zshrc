# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX="true"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Java 
export JAVA_HOME=$(/usr/libexec/java_home)

eval "$(starship init zsh)"

# NVM
# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

. $(brew --prefix)/etc/profile.d/z.sh

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git yarn-autocompletions zsh-autosuggestions zsh-syntax-highlighting zsh-better-npm-completion)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
# prompt pure

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export PATH=$HOME/Library/Python/3.7/bin:$PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# System
alias rm="trash"
alias m="mac"
alias ip="internal-ip --ipv4"

# thefuck commands
eval $(thefuck --alias)
alias f="fuck"

# .zshrc workflow
alias edit="nano ~/.zshrc"
alias reload=". ~/.zshrc"
alias src="source ~/.zshrc"

# Development workflows
alias Dev="cd ~/Dev"
alias OSS="cd ~/Dev/OSS"

# Yarn commands
alias y="yarn"
alias ys="yarn start"
alias yb="yarn build"
alias yd="yarn dev"
alias ysls="yarn sls:offline"
alias yt="yarn test"
alias ytu="yarn test --u"
alias ytw="yarn test --watch"
alias ytuw="yarn test --watch --u"

# Pnpm commands
alias p="pnpm"
alias pi="pnpm install"
alias ps="pnpm start"
alias pd="pnpm dev"
alias pt="pnpm test"
alias ptu="pnpm test -u"
alias pb="pnpm build" 

alias prev="cd .."
alias prevx="cd ../.."

# Git aliases
alias gpm="git push -u origin master"
alias unmess="git fetch -p && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D"

# dark-mode aliases
alias dark="dark-mode"

# DNS
alias flushdns="sudo ifconfig lo0 -alias 192.0.2.2"

# Apache
alias apachestart="sudo apachectl start"
alias apacherestart="sudo apachectl restart"
alias apachestop="sudo apachectl stop"

# Dynamodb
alias dyn="dynamodb-admin"

# HideDesktop / ShowDesktop
alias hidedesk="defaults write com.apple.finder CreateDesktop false; killall Finder"
alias showdesk="defaults write com.apple.finder CreateDesktop true; killall Finder"

# Python alias 
alias python='python3'
alias python2='python'

START="~/Dev"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  
# This loads nvm bash_completion
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/mac/.nvm/versions/node/v11.14.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/mac/.nvm/versions/node/v11.14.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/mac/.nvm/versions/node/v11.14.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/mac/.nvm/versions/node/v11.14.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/mac/.nvm/versions/node/v11.14.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/mac/.nvm/versions/node/v11.14.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh





# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# bun completions
[ -s "/Users/gaye/.bun/_bun" ] && source "/Users/gaye/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/gaye/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Fig post block. Keep at the bottom of this file.h

# pnpm
export PNPM_HOME="/Users/gaye/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
