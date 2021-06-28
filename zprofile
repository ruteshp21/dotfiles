#!/bin/sh

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

[[ -f ~/.zshenv ]] && source ~/.zshenv

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || startx "$XDG_CONFIG_HOME/X11/xinitrc"
fi
