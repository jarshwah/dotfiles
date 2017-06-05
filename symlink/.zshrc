# profiling: env ZSH_PROF= zsh -ic zprof
#if [[ -v ZSH_PROF ]]; then
#  zmodload zsh/zprof
#fi

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir dir_writable vcs root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv command_execution_time time)
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=1
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="yyyy-mm-dd"
DISABLE_UPDATE_PROMPT=true

fpath=(/usr/local/share/zsh-completions $fpath)
plugins=(autojump brew django docker encode64 extract git osx pip python vagrant z)

# Load our own dotfiles
for file in ~/.{exports,path,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Let paths be set first
[ -f /usr/local/bin/virtualenvwrapper.sh ] && source /usr/local/bin/virtualenvwrapper.sh

source $ZSH/oh-my-zsh.sh

# CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# COMPLETION_WAITING_DOTS="true"
# ZSH_CUSTOM=/path/to/new-custom-folder
# export LANG=en_US.UTF-8

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# History/Readline bindings
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
