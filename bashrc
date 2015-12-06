[ -n "$PS1" ] && source ~/.bash_profile;
[ -z "$PS1" ] && return

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
