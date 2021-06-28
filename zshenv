typeset -U PATH path

# Other XDG paths
#export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
#export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
#export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Fixing Paths
#export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
#export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
#export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
#export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
#export ZDOTDIR=$HOME/.config/zsh
#export HISTFILE="$XDG_DATA_HOME"/zsh/history

# Default Apps
export EDITOR="nano"
export READER="zathura"
export VISUAL="nano"
export TERMINAL="alacritty"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export WM="bspwm"

export PATH=~/.npm-global/bin:$PATH

# Pfetch
# OFF by default: shell editor wm de palette
export PF_INFO="ascii title os shell kernel uptime pkgs memory"
export PF_SOURCE=""
export PF_SEP=""
export PF_COLOR=1
export PF_COL1=4
export PF_COL2=7
export PF_COL3=1
export PF_ALIGN=""
export PF_ASCII="arch"
export USER="rutesh"
export HOSTNAME="jarvis"
export SHELL="zsh"

export XDG_CURRENT_DESKTOP="bspwm"
export DESKTOP_SESSION="bspwm"


# Path
path=("$HOME/scripts" 
      "$HOME/scripts/alsa" 
      "$HOME/scripts/pulse"
      "$HOME/scripts/polybar" 
      "$HOME/scripts/bspwm" 
      "$XDG_DATA_HOME/npm/bin" 
      "$HOME/.local/bin" 
      "$path[@]")
export PATH
