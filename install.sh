#!/bin/bash

cp -r home/.* $HOME/
cp -r confg/* $HOME/.config/

if [ ! -d "$HOME/.local/share/fonts" ]; then
  cp -r config/polybar/fonts/* $HOME/.local/share/fonts/
else
  mkdir -p $HOME/.local/share/fonts
  cp -r config/polybar/fonts/* $HOME/.local/share/fonts/
fi

fc-cache -v
