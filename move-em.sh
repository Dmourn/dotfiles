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


cp -ir ./waybar "${CONFIG_DIR}"/waybar
cp -ir ./wofi "${CONFIG_DIR}"/wofi
cp -ir ./i3 "${CONFIG_DIR}"/i3
cp -ir ./sway "${CONFIG_DIR}"/sway

cp -i ./zshrc ~/.zshrc
cp -i ./mostrc ~/.mostrc
cp -i ./tmux.conf ~/.tmux.conf

cat bashrc >> ~/.bashrc

cp -ir bashrc.d "${HOME}"/.bashrc.d
