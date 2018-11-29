# ~/.bashrc
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
export TERM=xterm-color

export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"
eval "$(direnv hook bash)"
export PGDATA=/usr/local/bin/postgres

export PATH="$HOME/bin:$PATH"
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/.nodebrew/current/bin:$PATH
export EDITOR=vim

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export PGDATA=/usr/local/var/postgres
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
export PATH=$PATH:$HOME/.nodebrew/current/bin
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias bi='bundle install --path vendor/bundle'
alias be='bundle exec'
alias bu='bundle update'
alias de='docker exec -it `docker ps --format "{{.Names}}" | peco` sh'
alias g='cd $(ghq list -p | peco)'
alias gad='git add'
alias gbr='git branch'
alias gck='git checkout'
alias gckp='git checkout $(git branch -a | peco)'
alias gcl='git clone'
alias gcp='git cherry-pick'
alias gdf='git diff --word-diff'
alias gfc='git fetch'
alias gin='git init'
alias glg='git log'
alias gmg='git merge'
alias gpl='git pull'
alias gps='git push'
alias gcm='git commit'
alias grb='git rebase'
alias grm='git remote'
alias grs='git reset'
alias gsp='git stash pop'
alias gss='git stash save'
alias gst='git status'
alias ls='ls -G'
alias ll='ls -hl'
alias tb="git symbolic-ref --short HEAD|tr -d \"\\n\""

# スクリプト読み込み
source ~/.git-completion.bash
source ~/.git-prompt.sh

# プロンプトに各種情報を表示
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

############### ターミナルのコマンド受付状態の表示変更
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $
export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '
##############
source ~/.git-completion.bash
