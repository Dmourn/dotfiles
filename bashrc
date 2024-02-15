export PROMPT_DIRTRIM=3
export PS1="\[\e[92m\]\u\[\e[93m@\]\e[94m\h \[\e[0m\]\A\[\e[95m\] \w\[\e[0m\]:\n:: \[\e[93m\]\[\e[0m\] "
export EDITOR="/usr/bin/vim"

export PYTHONDONTWRITEBYTECODE=1

alias sl='ls'
alias l='ls -alh'
alias ll='ls -ap'

alias pd='pushd'
alias pd1='pushd +1'

alias cr='cargo run'
alias cb='cargo build'

if [[ -e /usr/bin/batcat ]] ; then
	alias bat=batcat
fi

[[ -e /usr/local/bin/manpager ]] && export MANPAGER=/usr/local/bin/manpager


# if bashrc.d isn't sourced, uncomment
# if [ -d ~/.bashrc.d ]; then
#     for rc in ~/.bashrc.d/*; do
#         if [ -f "$rc" ]; then
#             . "$rc"
#         fi
#     done
# fi
# unset rc

# vi: ts=4 noexpandtab
