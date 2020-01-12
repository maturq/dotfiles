# Lines configured by zsh-newuser-install

autoload -U colors && colors

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
unsetopt appendhistory beep

function zle-line-init zle-keymap-select {
	RPS1="${${KEYMAP/vicmd/NORMAL}/(main|viins)/INSERT}"
	RPS2=$RPS1
	zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

bindkey -v
bindkey "^R" history-incremental-search-backward
bindkey -v '^?' backward-delete-char

# End of lines configured by zsh-newuser-install
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%} $%b "

# aliases
alias vi="nvim"
alias ls="ls --color=auto"
alias cat="bat"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# remove EOL mark
PROMPT_EOL_MARK=''
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
