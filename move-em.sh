#!/bin/bash

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

BASH_COMPLETION_DIR="${HOME}"/.local/share/bash-completion/completions
mkdir -p "$BASH_COMPLETION_DIR"

CONFIG_PRGMS=(waybar wofi i3 sway nvim)
for p in "${CONFIG_PRGMS[@]}" ; do
	cp -vir ./"${p}" "${CONFIG_DIR}/${p}"
done

SYSTEMD_USR_DIR="${HOME}/.config/systemd/user/"
mkdir -p "${SYSTEMD_USR_DIR}"
cp -vi ./systemd/* "${SYSTEMD_USR_DIR}/"

cp -vi ./zshrc ~/.zshrc
cp -vi ./mostrc ~/.mostrc
cp -vi ./tmux.conf ~/.tmux.conf

cat bashrc >> ~/.bashrc
cp -vir bashrc.d "${HOME}"/.bashrc.d

cp -vi ./bash-completion/* "$BASH_COMPLETION_DIR"/
