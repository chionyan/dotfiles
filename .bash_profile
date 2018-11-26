if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
export TERM=xterm-color

alias ls='ls -G'
alias ll='ls -hl'

alias bi='bundle install --path vendor/bundle'
alias be='bundle exec'
alias bu='bundle update'

alias g='cd $(ghq list -p | peco)'
alias gcp='git checkout $(git branch -a | peco)'

alias gdf='git diff --word-diff'
alias gst='git status'
alias gb='git branch'
alias gck='git checkout'

alias gf='git fetch'
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias gcm='git commit'
alias gcp='git cherry-pick'
alias gr='git rebase'

# this branch
alias tb="git symbolic-ref --short HEAD|tr -d \"\\n\""

alias gsp='git stash pop'
alias gss='git stash save'

alias de='docker exec -it `docker ps --format "{{.Names}}" | peco` sh'

export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"
eval "$(direnv hook bash)"
export PGDATA=/usr/local/bin/postgres

export PS1='[\W$(__git_ps1 " (%s)")]\$ '

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
