# https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# alias for starting postgresql
alias psql="'/Applications/Postgres.app/Contents/Versions/latest/bin'/psql -p5432"
#Added for postgresApp
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# bash prompt
# export PS1="\t \[\033[0;34m\]\w\[\033[0m\] \[\033[0;33m\]$git_branch\[\033[0m\]\[$txtred\]\$git_dirty\[$txtrst\]> "
export PS1="\[\033[0;32m\]\t\[\033[0m\] \[\033[0;34m\]\w\[\033[0m\] \[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]> "

# colored output for ls
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# autocomplete git branch names
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# NVM for node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
