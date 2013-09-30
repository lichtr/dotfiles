# Fast cding
# Set by zsh
#alias ..='cd ..'
#alias ...='cd ../..'
alias ....='cd ../../..'

# Remnants of the past
# Set by zsh
#alias ll='ls -l'
#alias la='ls -a'

# Main folders
alias c='cd ~/code'
alias dots='cd ~/dotfiles'

# LLT folders
alias llt=' cd ~/code/llt/'
alias llth='cd ~/code/llt/llt-helpers'
alias lltd='cd ~/code/llt/llt-db_handler'
alias lltm='cd ~/code/llt/llt-morphologizer'
alias lltc='cd ~/code/llt/llt-constants'
alias llte='cd ~/code/llt/llt-core_extensions'
alias lltf='cd ~/code/llt/llt-form_builder'
alias lltt='cd ~/code/llt/llt-tokenizer'

# Rake and bundler
alias r='rake'
alias br='bundle exec rake'
# Disabled for now, we try the bundler plugin
#alias be='bundle exec'
#alias bi='bundle install'
#alias bu='bundle update'

# Git
# most of these once custom aliases are included in the git plugin
#alias gd='git diff'
#alias gp='git push'
#alias gpr='git pull --rebase'
#alias grc='git rebase --continue'
#alias gst='git st'
alias gh='git hist'
alias gcom='gcmsg'
alias gs='gss' # usually starts ghostscript, a common and annoying typo

# Show the full current path
alias p='echo $PWD'

# Fast vim
alias v='vim'