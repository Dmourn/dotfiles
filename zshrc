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
export MANPAGER="most -s"
export WLR_DRM_NO_MODIFIERS=1
#export GIT_PS1_SHOWDIRTYSTATE
#export GIT_PS1_SHOW
#export GIT_PS1_SHOW
#export GIT_PS1_SHOW

export XDG_CONFIG_HOME=$HOME/.config

if [[ -n $NAME ]]; then source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ; fi
if [[ -n $NAME ]]; then source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ; fi

source /usr/share/git-core/contrib/completion/git-prompt.sh
setopt PROMPT_SUBST
PROMPT='%K{black}%F{yellow}${NAME}%(#.%K{red}%F{black}%U%n%S[%M lvl:%L]%s.%B%K{green}%F{black}{%n}%S[%M lvl:%L]%s)%F{green}%K{black}%(1j.%F{yellow}%Bj[%j]%f.)|%T|%u%f%b%k %B%F{cyan}%U%2~%f%u%b%k:%U%F{yellow}$(__git_ps1 "%s")%f%u: '
RPROMPT='%(?.%F{yellow}.%F{red})%U%?%f%u'
# for git This almost worked and broke in and interesting way. $(basename $(git rev-parse --symbolic-full-name HEAD))


alias ls="ls --color=always"
alias sl="ls"

if [[ -z $(which exa 2>/dev/null) ]]
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
alias ev-ag='eval $(ssh-agent)'
alias bi-wa='~/.bitward/Bitwarden-1.31.3-x86_64.AppImage && pkill --signal=QUIT Xwayland && exit'
#alias bi-wa='~/.bitward/Bitwarden-1.31.2-x86_64.AppImage && exit'
alias cmus='flatpak run io.github.cmus.cmus'
#figlet -f smslant 'BALLZ'
export MOZ_ENABLE_WAYLAND=1
alias firefox='flatpak run --socket=wayland org.mozilla.firefox && exit'

export TERM=xterm-256color
alias pol=/usr/libexec/xfce-polkit
alias s25=sha256sum

export PYTHONDONTWRITEBYTECODE=1

alias open=/usr/bin/xdg-open
export GRIM_DEFAULT_DIR=/home/%n/Pictures/Grimshots
