#!/usr/bin/env bash

# arch wiki says this should point to $HOME/.config
# but it's not set on fedora.
if [[ -n "$XDG_CONFIG_HOME" ]]; then
	CONFIG_DIR="$XDG_CONFIG_HOME"
else
	CONFIG_DIR="${HOME}"/.config
fi

if [[ ! -d "${CONFIG_DIR}" ]] ; then
	mkdir "${CONFIG_DIR}"
fi

this_script=$(readlink -f "$0")
PRGRMROOT="${this_script%/*}"

BASH_COMPLETION_DIR="${HOME}"/.local/share/bash-completion/completions
mkdir -p "$BASH_COMPLETION_DIR"

CONFIG_PRGMS=(waybar wofi i3 sway nvim)
for p in "${CONFIG_PRGMS[@]}" ; do
	cp -vir "${PRGRMROOT}/${p}" "${CONFIG_DIR}/"
done

SYSTEMD_USR_DIR="${HOME}/.config/systemd/user/"
mkdir -p "${SYSTEMD_USR_DIR}"
cp -vi "${PRGRMROOT}"/systemd/* "${SYSTEMD_USR_DIR}/"

cp -vi "${PRGRMROOT}"/zshrc ~/.zshrc
cp -vi "${PRGRMROOT}"/mostrc ~/.mostrc
cp -vi "${PRGRMROOT}"/tmux.conf ~/.tmux.conf

cat "${PRGRMROOT}"/bashrc >> ~/.bashrc
cp -vir "${PRGRMROOT}"/bashrc.d "${HOME}"/.bashrc.d

cp -vi "${PRGRMROOT}"/bash-completion/* "$BASH_COMPLETION_DIR"/

# We don't want to run this if in a container
if [[ -f /run/.containerenv ]] ; then
  exit
else
  read -rp "Install vim-plug for neovim? (y/n) " VIM_PLUG
  [[ $VIM_PLUG = "y" || $VIM_PLUG = "yes" || $VIM_PLUG = "Y" ]] && \
    curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
      --create-dirs 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi
