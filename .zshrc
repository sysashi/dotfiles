# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/sysashi/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall
source <(antibody init)
antibody bundle yardnsm/blox-zsh-theme

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# Aliases
alias ls='ls -lahtrG'

# Completion
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

# Tab/window title to current dir in iterm

if [ $ITERM_SESSION_ID ]; then
  DISABLE_AUTO_TITLE="true"
  echo -ne "\033];${PWD##*/}\007"
fi

precmd() {
  echo -ne "\033];${PWD##*/}\007"
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/Applications/kitty.app/Contents/MacOS:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/local/nvim/bin:$PATH"

function cdgr {
  cd $(git rev-parse --show-toplevel)
}

alias gadw='sh -c '\''git diff -w --no-color "$@" | git apply --cached --ignore-whitespace'\'' - '


. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
