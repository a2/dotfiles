export EDITOR="subl -n -w"
export GIT_EDITOR="subl -n -w"

BREW_ROOT="/usr/local"
export RBENV_ROOT="$BREW_ROOT/opt/rbenv"

eval "$(rbenv init - --no-rehash)"

function ql { qlmanage -p $1 >& /dev/null; }

# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  source `brew --prefix`/etc/grc.bashrc
fi

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

export ZSH=$HOME/.cider/zsh/oh-my-zsh
export ZSH_CUSTOM=$HOME/.cider/zsh/custom

ZSH_THEME="kolo"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"
plugins=(brew brew-cask extract history-substring-search git sublime terminalapp xcode)

source $ZSH/oh-my-zsh.sh
