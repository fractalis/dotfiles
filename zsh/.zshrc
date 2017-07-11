
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"

zplug plugins/git, from:oh-my-zsh

zplug "jamiewilson/predawn-shell", as:theme
#zplug "eendroroy/alien-minimal", as:theme
#zplug "retroalgic/aplos", as:theme
#zplug "akz92/clean", as:theme
#zplug "potasiyam/cmder-zsh-theme", as:theme
#zplug "cusxio/delta-prompt", as:theme
#zplug "davydovanton/excess.zsh-theme", as:theme
#zplug "chauncey-garrett/zsh-prompt-garrett", as:theme
#zplug "nicolaracco/gawaine.zsh-theme", as:theme
#zplug "tylerreckart/hyperzsh", as:theme
#zplug "hevi9/infoline-zsh-theme", as:theme
#zplug "k-kinzal/oh-my-zsh-sinon-theme", as:theme

zplug load


PROMPT_START_TAG='=> '
PROMPT_END_TAG=' $'
PROMPT_START_TAG_COLOR=81
PROMPT_END_TAG_COLOR=81

# ----- ALIASES ------------

alias ls='ls --color'
alias gits='git status'
# --------------------------

#---------------------------------------------------
# Lines configured by zsh-newuser-install
#HISTFILE=~/.histfile
#HISTSIZE=1000
#SAVEHIST=1000
#bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/fractalis/.zshrc'
#
#autoload -Uz compinit
#compinit
# End of lines added by compinstall
