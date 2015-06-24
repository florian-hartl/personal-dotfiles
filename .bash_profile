# history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=1000000                  # big big history
export HISTFILESIZE=1000000              # big big history
shopt -s histappend                      # append to history, don't overwrite it
export HISTTIMEFORMAT="%F %T $ "

# shortcuts
alias curlc='curl --silent --show-error --dump-header /dev/stderr'
alias hgrep='history | grep'
alias ll='ls -alh'

# custom prompt
function parse_git_branch_and_add_brackets {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="${debian_chroot:+($debian_chroot)}\[\e[00;34m\]\u\[\e[m\]@\[\e[00;32m\]\h\[\e[m\]:\[\e[00;33m\]\w\[\e[m\]\[\e[00;36m\]\$(parse_git_branch_and_add_brackets) \[\e[m\]$ "

# enable coloring of terminal (mac)
export CLICOLOR=1

# grep color
export GREP_OPTIONS='--color=auto'
