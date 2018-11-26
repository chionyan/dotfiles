# ~/.bashrc
export PATH="$HOME/bin:$PATH"
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/.nodebrew/current/bin:$PATH
export EDITOR=vim
source ~/.git-prompt.sh

function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey 'g' peco-src
