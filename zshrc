# Path to your oh-my-zsh configuration.
DOTFILES_FOLDER=~/.dotfiles
ZSH=$DOTFILES_FOLDER/oh-my-zsh


#sessionname=daemon

#new_session () { tmux new-session -d -s $sessionname "$@"; }

#if tmux has-session -t $sessionname >/dev/null 2>&1; then
#  #windows=`tmux list-windows -t $sessionname | cut -f 2 -d ' ' | sed 's/[*-]$//g'`
#    tmux attach -t $sessionname
#else
#  tmux -2 new-session -d -n torrent -s $sessionname rtorrent
#fi
tmux -2

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

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

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
#plugins=(git colored-man colorize common-aliases        \
#         compleat cp debian history extract git-extras          \
#         git-flow github gitignore git-prompt git-remote-branch \
#         gnu-utils mercurial perl postgres pyenv pylint python  \
#         rsync sublime screen sudo svn terminator themes thor   \
#         vundle django gitfast)


plugins=(cp compleat common-aliases sudo        \
         colored-man colorize themes            \
         git gitfast git-extras git-flow github \
         gitignore git-prompt git-remote-branch \
         debian history \
         pyenv pylint python django             \
         gnu-utils mercurial svn                \
         perl postgres                          \
         rsync sublime terminator thor          \
         vundle)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
fpath=($DOTFILES_FOLDER/complete_functions $fpath)
autoload zmv
autoload -U compinit
compinit
autoload -U bashcompinit
bashcompinit
setopt autocd
#setopt extendedglob
#setopt rmstarsilent

#setopt correctall
export HISTSIZE=1000000000000000000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

source $DOTFILES_FOLDER/profile

# User configuration
export PYTHONSTARTUP=~/.dotfiles/pythonrc

# # Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/dsa_id"

