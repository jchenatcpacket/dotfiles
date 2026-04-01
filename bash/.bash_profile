# export PS1="\u@\h: \$PWD \n=> "

# export PS1="🎅 \[\e[32m\]\u\[\e[0m\]\[\e[36m\]@\[\e[0m\]\[\e[34m\]\h\[\e[0m\]\[\e[33m\]:\w\[\e[0m\] on 🎄: "

# export PS1="🎅 \[\e[32m\]\u\[\e[0m\]\[\e[36m\]@\[\e[0m\]\[\e[34m\]\h\[\e[0m\]\[\e[33m\]:\w\[\e[0m\] $(__show_git_branch)\[\033[00m\]\$  on \[\e[35m\][\$(date '+%Y-%m-%d %H:%M:%S')]\[\e[0m\] 🎄\n => "

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="🎅 \[\e[32m\]\u\[\e[0m\]\[\e[36m\]@\[\e[0m\]\[\e[34m\]\h\[\e[0m\]\[\e[33m\]:\w\[\e[0m\] \[\e[31m\]\$(parse_git_branch)\[\e[0m\] on \[\e[35m\][\$(date '+%Y-%m-%d %H:%M:%S')]\[\e[0m\] 🎄\n => "