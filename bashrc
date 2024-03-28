export PROMPT_DIRTRIM=4
if [[ -n "$(which pretty-git-prompt 2>/dev/null)" ]]; then
  prompt_command() {
	PS1="\[\e[92m\]\u\[\e[93m@\]\e[94m\h \[\e[0m\]\A\[\e[95m\] \w\[\e[0m\]:\n:\[\e[93m\]$(pretty-git-prompt)\[\e[0m\]: "
  }
  PROMPT_COMMAND="prompt_command ; $PROMPT_COMMAND"
else
  export PS1="\[\e[94m\]\u\[\e[93m@\]\e[92m\h \[\e[0m\]\A\[\e[95m\] \w\[\e[0m\]:\n:: \[\e[93m\]\[\e[0m\] "
fi


export EDITOR="/usr/bin/vim"

export PYTHONDONTWRITEBYTECODE=1

alias sl='ls'
alias l='ls -alh'
alias ll='ls -ap'

alias pd='pushd'
alias pd1='pushd +1'

alias cr='cargo run'
alias cb='cargo build'

alias info='info --vi-keys'

[[ -e /usr/bin/batcat ]] && alias bat=batcat

if [[ -e /usr/local/bin/manpager ]] ; then
  export MANPAGER=/usr/local/bin/manpager
else
  export MANPAGER="/usr/bin/vim -M +MANPAGER -"
fi


# if bashrc.d isn't sourced, uncomment
# if [ -d ~/.bashrc.d ]; then
#     for rc in ~/.bashrc.d/*; do
#         if [ -f "$rc" ]; then
#             . "$rc"
#         fi
#     done
# fi
# unset rc

# vi: ts=2 sw=2 sts=2 expandtab
