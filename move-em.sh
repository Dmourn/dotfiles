#!/bin/bash

mv -i ./waybar ~/.config/
mv -i ./wofi ~/.config/
mv -i ./i3 ~/.config/

mv -i ./zshrc ~/.zshrc
mv -i ./mostrc ~/.mostrc
mv -i ./tmux.conf ~/.tmux.conf
cat bashrc >> ~/.bashrc && rm bashrc

