CONFIG_DIR="$HOME/.config"

# exports
export PATH="$PATH:$HOME/.local/bin"

export XDG_CONFIG_HOME="$CONFIG_DIR"
export ZDOTDIR="$CONFIG_DIR/zsh"

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"

export KEYTIMEOUT=1
# aliases
alias vi="nvim"
alias ls="ls --color=auto"
alias cat="bat"

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
