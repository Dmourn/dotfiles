export PROMPT_DIRTRIM=3
export PS1=" \e[92m\u\e[93m@\e[94m\h \e[0m\A\e[95m \w\e[0m:\n:: "
export EDITOR="/usr/bin/vim"


alias sl='ls'
alias l='ls -alh'
alias ll='ls -ap'
if [[ -e /usr/bin/batcat ]] ; then
alias bat=batcat
fi
