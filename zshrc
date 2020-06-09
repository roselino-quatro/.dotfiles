# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/lourenco/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

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
plugins=(git)

source ~/.alias
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
#
ZSH_THEME="powerlevel9k/powerlevel9k"
. ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir history   ssh rbenv time vcs  root_indicator status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode command_execution_time  custom_now_playing dir_writable  background_jobs custom_pid ram)

POWERLEVEL9K_MODE='nerdfont-complete'
ZLE_RPROMPT_INDENT=0

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"


POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\u256D \n"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\u2570 %K{013}%F{black} \Uf08a \uf6f7  lets go dude! \uf309 %f%k%F{013}%f "

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='white'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='cyan'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='white'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='green'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='cyan'

POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='green'

POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='blue'

POWERLEVEL9K_DIR_BACKGROUND="032"
POWERLEVEL9K_DIR_HOME_FOREGROUND="red"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="193"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="193"

POWERLEVEL9K_CUSTOM_PID='echo -e "\uf258  $$ \uf258  `date +%d/%m/%Y`"'
POWERLEVEL9K_CUSTOM_PID_BACKGROUND="green"
POWERLEVEL9K_CUSTOM_PID_FOREGROUND="black"

POWERLEVEL9K_CUSTOM_NEWLINE="print '\n'"
POWERLEVEL9K_CUSTOM_NEWLINE_BACKGROUND="green"
POWERLEVEL9K_CUSTOM_NEWLINE_FOREGROUND="white"

POWERLEVEL9K_CUSTOM_TTY="tty"
POWERLEVEL9K_CUSTOM_TTY_BACKGROUND="blue"
POWERLEVEL9K_CUSTOM_TTY_FOREGROUND="white"

POWERLEVEL9K_CUSTOM_NOW_PLAYING='~/.nowplaying'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_BACKGROUND='blue'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_FOREGROUND='black'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2