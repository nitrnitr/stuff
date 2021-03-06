# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/nitrnitr/.oh-my-zsh"
export NODE_OPTIONS="--max-old-space-size=8192"
export EDITOR="nvim -p"
export HUSKY_SKIP_HOOKS=1
export HUSKY_SKIP_INSTALL=1
ZSH_DISABLE_COMPFIX=true
HUSKY_SKIP_HOOKS=1
HUSKY_SKIP_INSTALL=1

ZSH_THEME="pygmalion"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
autoload -U compinit && compinit
autoload -U colors && colors
autoload -Uz vcs_info

precmd() { vcs_info }

autoload -U select-word-style
select-word-style bash
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

source /usr/local/share/chruby/chruby.sh
chruby 2.4.2
source /usr/local/share/chruby/auto.sh

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
setopt AUTO_PARAM_SLASH

alias ls='ls -GFh'
alias be='bundle exec'
alias gst='git status'
alias gco='git checkout .'
alias mate='/Users/nitrnitr/Applications/TextMate.app/Contents/Resources/mate'
alias grep='grep --color=auto'
alias tb="nc termbin.com 9999"
alias tbpb="nc termbin.com 9999|pbcopy"
alias weather="curl wttr.in/La_Plata"
alias vim="nvim -p"
alias vi="nvim -p"
alias rpi="ssh nitrnitr@192.168.0.69"
alias sv="ssh -t nitrnitr@192.168.0.10 tmux new"
alias cpu="sysctl -a | grep machdep.cpu | grep string"
alias mac="ruby ~/mac.rb"
# ffmpeg -i broken.mp4 -c:v libx264 -profile:v baseline -level 3.0 -pix_fmt yuv420p working.mp4

export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/usr/local/bin/
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG
#autoload -U promptinit; promptinit
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
