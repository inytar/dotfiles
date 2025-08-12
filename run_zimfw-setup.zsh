#!/bin/zsh

export ZIM_HOME=$HOME/.local/share/zim
source ~/.local/share/zim/zimfw.zsh init
zimfw uninstall
zimfw update
