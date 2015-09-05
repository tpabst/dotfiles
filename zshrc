# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="thomas"
#ZSH_THEME="skaro"
#ZSH_THEME="af-magic"
#ZSH_THEME="intheloop"

#ZSH_THEME="fino"
#ZSH_THEME="gentoo"
#ZSH_THEME="juanghurtado"
#ZSH_THEME="nicoulaj"
#ZSH_THEME="smt"
#ZSH_THEME="sporty_256"

#ZSH_THEME="edvardm"
#ZSH_THEME="arrow"
#ZSH_THEME="clean"
#ZSH_THEME="jaischeema"
#ZSH_THEME="muse"
#ZSH_THEME="mrtazz"
#ZSH_THEME="sorin"
#ZSH_THEME="terminalparty"
#ZSH_THEME="wedisagree"

#ZSH_THEME="alanpeabody"
#ZSH_THEME="avit"
#ZSH_THEME="crcandy"
#ZSH_THEME="crunch"
#ZSH_THEME="dpoggi"
#ZSH_THEME="fletcherm"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="tonotdo"
#ZSH_THEME="wezm+"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colored-man colorize common-aliases        \
         compleat cp debian history extract git-extras          \
         git-flow github gitignore git-prompt git-remote-branch \
         gnu-utils mercurial perl postgres pyenv pylint python  \
         rsync sublime screen sudo svn terminator themes thor   \
         vundle django gitfast)

source $ZSH/oh-my-zsh.sh



# User configuration
export PYTHONSTARTUP=~/.dotfiles/pythonrc

export PATH=$HOME/.dotfiles/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/dsa_id"

# Own
 export PAGER=
 export LC_ALL="en_US.UTF-8"
 export LANG="en_US.UTF-8"



if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# std aliases
alias ll='ls -lhF --color=auto'
alias lla='ls -alhF --color=auto'
alias la='ls -Ah --color=auto'
alias l='ls -CFh --color=auto'
alias cd..='cd ..'
alias du='du -h'
alias df='df -h'

# vim aliases
alias :wq='echo Je ne suis PAS vim'
alias :w='echo Je ne suis PAS vim'
alias :q!='echo Je ne suis PAS vim'
alias vi='vim'
alias gvi='gvim'

# spécail aliases
alias open='gnome-open'
alias rezo="sudo watch netstat -alpe --ip"
alias h='history'
alias j='jobs -l'

alias diff="diff -NEwabur -x *~ -x *.orig -x *.rej -x *.swp"


export VIMPAGER=~/my_scripts/vimpager
alias vless=$VIMPAGER

alias lo='libreoffice'
alias rgrep='grep -HnrIs'
