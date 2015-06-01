# history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=1000000                  # big big history
export HISTFILESIZE=1000000              # big big history
shopt -s histappend                      # append to history, don't overwrite it

# shortcuts
alias curlc='curl --silent --show-error --dump-header /dev/stderr'
alias hgrep='history | grep'
alias ll='ls -alh'
