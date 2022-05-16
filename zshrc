# zstyle ':completion:*' auto-description '%F{cyan}%d%f'
zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' format '%U%K{yellow}%F{black}%d%f%u%k'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list '+m:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+r:|[/._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' prompt '%F{red}E:%e%f'
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/%n/.zshrc'


autoload -Uz compinit
compinit
bindkey -v
bindkey '^R' history-incremental-pattern-search-backward
HISTFILE=~/.not_histfile
HISTSIZE=50000
SAVEHIST=10000
setopt notify
unsetopt beep

export EDITOR=vim
export WLR_DRM_NO_MODIFIERS=1

export XDG_CONFIG_HOME=$HOME/.config


#if [[ -n $NAME ]]; then source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ; fi
#if [[ -n $NAME ]]; then source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ; fi
if [[ -e /usr/share/git-core/contrib/completion/git-prompt.sh ]] ; then
source /usr/share/git-core/contrib/completion/git-prompt.sh
setopt PROMPT_SUBST
PROMPT='%K{black}%F{yellow}${NAME}%(#.%K{red}%F{black}%U%n%S[%M lvl:%L]%s.%B%K{green}%F{black}{%n}%S[%M lvl:%L]%s)%F{green}%K{black}%(1j.%F{yellow}%Bj[%j]%f.)|%T|%u%f%b%k %B%F{cyan}%U%2~%f%u%b%k:%U%F{yellow}$(__git_ps1 "%s")%f%u: '
else
PROMPT='%K{black}%F{yellow}${NAME}%(#.%K{red}%F{black}%U%n%S[%M lvl:%L]%s.%B%K{green}%F{black}{%n}%S[%M lvl:%L]%s)%F{green}%K{black}%(1j.%F{yellow}%Bj[%j]%f.)|%T|%u%f%b%k %B%F{cyan}%U%2~%f%u%b%k:%U%F{yellow}$(__git_ps1 "%s")%f%u: '
fi
RPROMPT='%(?.%F{yellow}.%F{red})%U%?%f%u'

alias ls="ls --color=always"
alias sl="ls"

if [[ -z $(/usr/bin/which exa 2>/dev/null) ]]
then
	alias l='ls -alhg'
	alias ll='ls -ap'
	alias lsz='ls -aZ'
else
	alias l='exa -alhg'
	alias ll='exa -a'
	alias lsz='ls -aZ'
fi

alias emn='emacs-nox'
alias ip='ip -c'
alias dnf='dnf --color=always'
alias bd='buildah'
alias pd='podman'

alias firefox='firefox-wayland'
alias evag='eval $(ssh-agent)'

export TERM=xterm-256color
alias s25=sha256sum

export PYTHONDONTWRITEBYTECODE=1

